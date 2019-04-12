import socket
import threading
import datetime
from config import *

Connections = []

def main():

    choice = ''
    NodeList = []
    global isRunning
    global errorFile
    errorFile = open(ERROR_FILE, 'w')
    isRunning = True

    socketThread = threading.Thread(target = startSocket)
    socketThread.start()

    while isRunning:

        print("[1] Set Up")
        print("[2] Run All") 
        print("[3] Print Last Run")
        print("[4] Quit")
    
        # Ask for the user's choice.
        choice = input("\nWhat would you like to do? ")

        # Respond to the user's choice.
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
    errorFile.close()
    print("Closing TCP Server...")
    socketThread.join()
    print("Thanks again, bye now.")

#runs time delay on each node
def RunAll(NodeList):
    clear()
    print ("Runing All...")

    if len(NodeList) == 0:
        print("Run failed: There are no nodes setup.")
        return []

    for node in NodeList:
        try:
            node.conn.settimeout(RUN_TIMEOUT)
            node.conn.sendall(b"Run")
            node.Time = str(node.conn.recv(2048))
            node.conn.settimeout(GEN_TIMEOUT)
        except socket.error as e:
            print("Running failed: Could not get responce from node " + str(node.NodeNumber))
            errorFile.write(str(datetime.datetime.now()) + " " + e)
            return[]

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

    nextNode = None
    lastNode = None
    nextIP = None
    setupNodes = []
    nodesInOrder = []
    nodeCount = 1

    if len(Connections) == 0:
        print("Setup incomplete: There are no nodes found.")
        return []


    #checking input & output for all connections
    #if connection times out, remove it from list
    for node in Connections:
        try:
            node.conn.sendall(b'Input')
            input = node.conn.recv(2048).decode("utf-8") 
            if input == "true":
                node.Input = True
            elif input == "false":
                node.Input = False
            node.conn.sendall(b'Output')
            output = node.conn.recv(2048).decode("utf-8") 
            if output == "true":
                node.Output = True
            elif output == "false":
                node.Output = False
            setupNodes.append(node)

        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            node.conn.close()
            Connections.remove(node)

    if len(setupNodes) == 0:
        print("Setup incomplete: There are nodes found.")
        return []
    
    #finding first and last nodes
    for node in setupNodes:
        if not node.Input and node.Output:
            if nextNode == None:
                nextNode = node
            else:
                print("Setup incomplete: There are 2+ nodes without an input (1st node).")
                return []
        elif node.Input and not node.Output:
            if lastNode == None:
                lastNode = node
            else:
                print("Setup incomplete: There are 2+ nodes without an output (last node).")
                return []
        elif not node.Input and not node.Output:
            print("Setup incomplete: There is a node without any connections.")
            return []

    if(nextNode == None):
        print("Setup incomplete: There is no node with an output and not an input (1st node).")
        return []
    if(lastNode == None):
        print("Setup incomplete: There is no node with an input and not an output (last node).")
        return []
    

    nodesInOrder.append(nextNode)
    nodesInOrder[0].NodeNumber = nodeCount

    #sets all nodes except first node to listen
    for node in setupNodes:
        if not nextNode:
            node.conn.sendall(b'Listen')

    while nextNode != lastNode:
        nodeCount += 1

        try:
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.settimeout(10.0)
                s.bind(('', SC_PORT))
                s.listen(1)
                conn, addr = s.accept()
                nextIP = str(addr[0])
                conn.close()
                s.close()
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            print("Setup incomplete: Cannot find next node.")
            print("Check node after node " + str(nodeCount))
            return []
        
        for node in setupNodes:
            if nextIP == node.addr:
                node.NodeNumber = nodeCount
                nodesInOrder.append(node)
                nextNode = node

    lastNode.NodeNumber = nodeCount
    nodesInOrder.append(lastNode) 

    print("Nodes are connected in this order:")
    for node in nodesInOrder:
        print("Node: " + str(node.NodeNumber) + " IP: " + node.addr)

    print("Done Setting Up.")
    toContinue()
    clear()
    return nodesInOrder

#for debugging purposes, will remove in final program
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

    if len(NodeList) == 0:
        print("Print failed: There are no nodes setup.")
        return []

    PrintRun(NodeList)

    print ("Done Printing Last Run.")
    toContinue()
    clear()
    return

def quitApp(NodeList):
    print("Closing all connections...")
    for node in NodeList:
        try:
            node.conn.Close()
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            continue


class Node:
    def __init__(self, conn, addr):
        self.conn = conn
        self.addr = str(addr[0])
        self.NodeNumber = None
        self.Time = None
        self.Input = None
        self.Output = None

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

    input("Press any key to continue...")

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



