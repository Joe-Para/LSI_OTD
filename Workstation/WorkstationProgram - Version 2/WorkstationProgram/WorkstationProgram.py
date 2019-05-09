import socket
import threading
import datetime
import time
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
        return NodeList

    for node in NodeList:
        try:
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

    if len(Connections) == 0:
        print("Setup incomplete: There are no nodes found.")
        return []


    for node in Connections:
        node.NextNode = None
        node.PrevNode = None
        node.Time = None

    for node in Connections:
        try: 
            node.conn.sendall(b'Listen')
            setupNodes.append(node)
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
           
    if len(setupNodes) == 0:
        print("Setup incomplete: There are nodes found.")
        return []

    for currNode in setupNodes:
        try:
            currNode.conn.sendall(b'Send Ping')
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.settimeout(SC_TIMEOUT)
                s.bind(('', SC_PORT))
                s.listen(5)
                newConn, addr = s.accept()
                nextIP = str(addr[0])
                newConn.close()
                s.close()
        except socket.error as e:
            errorFile.write(str(datetime.datetime.now()) + " Socket error: " + str(e))
            nextIP = None
        
        for nextNode in setupNodes:
            if nextIP == nextNode.addr:
                currNode.NextNode = nextNode
                nextNode.PrevNode = currNode

    for node in setupNodes:
        try:
            node.conn.sendall(b'State')
            state = node.conn.recv(2048).decode("utf-8") 
            if (state == "Listening" and firstNode == None):
                node.conn.sendall(b'Stop Listening')
                firstNode = node
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

    nextNode = firstNode
    while( nextNode != None):
        nodeCount += 1
        nextNode.NodeNumber = nodeCount
        nodesInOrder.append(nextNode)
        nextNode = nextNode.NextNode

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



