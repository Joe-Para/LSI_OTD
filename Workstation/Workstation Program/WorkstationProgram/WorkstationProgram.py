import socket
import threading
import datetime
import time
from config import *

#all connections
# socketThread adds all connections here
Connections = []

def main():

    choice = ''
    NodeList = []
    global isRunning
    global errorFile
    errorFile = open(ERROR_FILE, 'w')
    isRunning = True

    #start a thread that accepts incoming TCP connections
    socketThread = threading.Thread(target = startSocket)
    socketThread.start()

    #main program loop
    while isRunning:

        print("[1] Set Up")
        print("[2] Run All") 
        print("[3] Print Last Run")
        print("[4] Quit")
    
        # Ask for the user's choice.
        choice = input("\nWhat would you like to do? ")

        # function calls based on user's choice
        if choice == '1':
            NodeList = SetUp()
        elif choice == '2':
            NodeList = RunAll(NodeList)
        elif choice == '3':
            PrintLastRun(NodeList)
        elif choice == '4': 
            quitApp(NodeList)
            isRunning = False
        elif choice == 'c':
            PrintConnections()
        else:
            print("\nNot a valid option, please try again.")  
    #quitting program closes error file, stops thread that accepts TCP connections
    errorFile.close()
    print("Closing TCP Server...")
    socketThread.join()
    print("Thanks again, bye now.")

#runs time delay on each node
#nodes must have already been setup
def RunAll(NodeList):
    clear()
    print ("Runing All...")

    # checks to make sure nodes are in the list (already setup)
    if len(NodeList) == 0:
        print("Run failed: There are no nodes setup.")
        return NodeList

    # sends run command to each node and receives the delay
    for node in NodeList:
        try:
            # increses socket timeout for run since it could time more time
            node.conn.settimeout(RUN_TIMEOUT)
            node.conn.sendall(b"Run")
            node.Time = node.conn.recv(2048).decode("utf-8") 
            node.conn.settimeout(GEN_TIMEOUT)
        except socket.error as e:
            print("Running failed: Could not get response from node " + str(node.NodeNumber))
            node.conn.settimeout(GEN_TIMEOUT)
            errorFile.write(str(datetime.datetime.now()) + " " + str(e))
            return NodeList


    #print the run data
    PrintRun(NodeList)
    print("Done Running.")
    toContinue()
    clear()
    return NodeList
 
#setsup nodes and puts them in a list in order
def SetUp():
    clear()
    print("Setting up...")

    firstNode = None
    nextIP = None
    setupNodes = []
    nodesInOrder = []
    nodeCount = 0

    # checks to make sure there is an active connection
    if len(Connections) == 0:
        print("Setup incomplete: There are no nodes found.")
        return []

    # clears NextNode, PrevNode and Time in each node
    for node in Connections:
        node.NextNode = None
        node.PrevNode = None
        node.Time = None
    
    # puts all nodes in the listen state
    for node in Connections:
        try: 
            node.conn.sendall(b'Listen')
            # adds nodes that received the Listen command into a new list
            # this is because some nodes in connections may not be active anymore 
            # and we only wanna work with the active connections
            setupNodes.append(node)
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
           
    # prints error if no nodes received the Listen command
    if len(setupNodes) == 0:
        print("Setup incomplete: There are nodes found.")
        return []

    # has each node send a ping 
    for currNode in setupNodes:
        try:
            currNode.conn.sendall(b'Send Ping')
            # next node will start a new TCP connection on different port when ping was received
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.settimeout(SC_TIMEOUT)
                s.bind(('', SC_PORT))
                s.listen(1)
                newConn, addr = s.accept()
                nextIP = str(addr[0])
                newConn.close()
                s.close()
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            nextIP = None
        
        # compared the IP from the new TCP connection with nodes in setupNodes to determine the next node
        # creates a linked-list type structure with nodes so each node knows who is before and after it
        for nextNode in setupNodes:
            if nextIP == nextNode.addr:
                currNode.NextNode = nextNode
                nextNode.PrevNode = currNode

    #checks state of all nodes
    for node in setupNodes:
        try:
            node.conn.sendall(b'State')
            state = node.conn.recv(2048).decode("utf-8") 
            #if the node is still listening after all nodes sent a ping it should be the first node
            if (state == "Listening" and firstNode == None):
                node.conn.sendall(b'Stop Listening')
                firstNode = node
            #if two+ nodes are still listening then nodes aren't connected correctly and prints error
            elif (state == "Listening" and firstNode != None):
                for node in setupNodes:
                    try: 
                        node.conn.sendall(b'Stop Listening')
                    except socket.error as e:
                        errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
                print("Setup incomplete: There are 2+ nodes that do not have inputs.")
                return []
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            print("Setup incomplete: Could not determine node order.")
            return []

    # uses the first node to go through and determine the order of nodes by using the NextNode in each node
    nextNode = firstNode
    while( nextNode != None):
        nodeCount += 1
        nextNode.NodeNumber = nodeCount
        nodesInOrder.append(nextNode)
        nextNode = nextNode.NextNode

    #prints out node number and IP
    print("Nodes are connected in this order:")
    for node in nodesInOrder:
        print("Node: " + str(node.NodeNumber) + " IP: " + node.addr)

    print("Done Setting Up.")
    toContinue()
    clear()
    return nodesInOrder

# for debugging purposes, prints all the connections in Connections list
def PrintConnections():
    clear()
    print("Printing Connections")
    for conn in Connections:
        print(conn.addr)
    print("Done Printing Connections")
    toContinue()
    clear()

#calls print node function for each node in NodeList
def PrintRun(NodeList):
    for node in NodeList:
        node.PrintNode()

#prints the last runs for each node
def PrintLastRun(NodeList):
    clear()
    print("Printing Last Run...")

    # prints error is no nodes are setup
    if len(NodeList) == 0:
        print("Print failed: There are no nodes setup.")
        return []

    PrintRun(NodeList)

    print ("Done Printing Last Run.")
    toContinue()
    clear()
    return

# function to quit app
# closes all the connections
def quitApp(NodeList):
    print("Closing all connections...")
    for node in NodeList:
        try:
            node.conn.Close()
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            continue

# Node Class
class Node:
    def __init__(self, conn, addr):
        self.conn = conn
        self.addr = str(addr[0])
        self.NodeNumber = None
        self.Time = None
        self.NextNode = None
        self.PrevNode = None

    def PrintNode(self):
        if self.NodeNumber == None:
            print("Node has not been setup yet")
        elif self.Time == None:
            print("Node has not been ran yet")
        else:
            print("Node: " + str(self.NodeNumber) + " IP: " + self.addr + " Time: " + self.Time)

#clears terminal screen
def clear():   
    # import only system from os 
    from os import system, name     
    # for windows 
    if name == 'nt': 
        _ = system('cls') 
    # for mac and linux(here, os.name is 'posix') 
    else: 
        _ = system('clear') 

#press any key to continue
def toContinue():

    input("Press enter to continue...")

#thread that will listen for TCP connections and add the new connections to a list
def startSocket():

    HOST = ''  # Symbolic name meaning all available interfaces
    count = 0
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.settimeout(5.0)
    s.bind((HOST, MC_PORT))
    s.listen(10)
    while 1:
        if not isRunning: break
        try:
            conn, addr = s.accept()
            conn.settimeout(GEN_TIMEOUT)
            Connections.append(Node(conn, addr))
        except socket.error:
            count += 1
    s.close()

if __name__ == "__main__":
    main()



