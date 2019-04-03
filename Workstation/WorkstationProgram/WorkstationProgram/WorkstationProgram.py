import socket

class Node:
    def __init__(self, nodeNumber, IP):
        self.nodeNumber = nodeNumber
        self.IP = IP
        self.Time = "NULL"

    def PrintNode(self):
        print("Node: " + self.nodeNumber + " IP: " +  self.IP + " Time: " + self.Time)

#Might be able to get rid of Initialization
def Initialize():
    clear()
    print("Initializing...")
    print ("Initialization Complete.")
    toContinue()
    return

#Use UDP communication to send Run to all nodes
def RunAll(NodeList):
    clear()
    print ("Runing All...")

    #ForEach Node, send Run

    #while count < Nodelist
        #UDP Recieve data from each Node & store

    #Autofill fake data
    for node in NodeList:
        node.Time = "100s"

    #print the run data
    PrintRun(NodeList)
    print("Done Running.")
    toContinue()
    return NodeList

#Looks for TCP connections & added to NodeList
#Send 
def SetUp(NodeList):
    clear()
    print("Setting up...")

    #restarts nodes (nodes still connected)
    for node in NodeList:
        #send restart command
        print("Restarting devices")

    #Listen for TDC sockets, create node for each connection

    newNodeList = []
    newNodeList.append(Node("Node1", "192.168.0.56"))
    newNodeList.append(Node("Node2", "192.168.0.86"))
    newNodeList.append(Node("Node3", "192.168.0.46"))

    print ("Done Setting Up.")
    toContinue()
    return newNodeList

def PrintRun(NodeList):
    for node in NodeList:
        node.PrintNode()

def UpdatePrintRun(NodeList):
    clear()
    print("Printing Last Run...")

    #Check for new UDP Results
    #Print Results

    PrintRun(NodeList)

    print ("Done Printing Last Run.")
    toContinue()
    return

def clear(): 
  
    # import only system from os 
    from os import system, name 
        
    # for windows 
    if name == 'nt': 
        _ = system('cls') 
  
    # for mac and linux(here, os.name is 'posix') 
    else: 
        _ = system('clear') 

def toContinue():

    input("Press any key to continue...")


#### Start of MAIN program ####
Initialize()

choice = ''
NodeList = []

while choice != '4':

    clear()
    print("[1] Set Up")
    print("[2] Run All") 
    print("[3] Update & Print")
    print("[4] Quit")
    
    # Ask for the user's choice.
    choice = input("\nWhat would you like to do? ")

    # Respond to the user's choice.
    if choice == '1':
        NodeList = SetUp(NodeList)
    elif choice == '2':
        NodeList = RunAll(NodeList)
    elif choice == '3':
        UpdatePrintRun(NodeList)
    elif choice == '4':
        clear()
        print("\nQuitting Application.\n")
    else:
        print("\nNot a valid option, please try again.")       
print("Thanks again, bye now.")





