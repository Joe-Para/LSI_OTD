#CONFIG FILE FOR WORKSTATION


#Error File Name
ERROR_FILE = "workstation_error.error"

#Main Connection Port
#This port is for the primary connection with the node
MC_PORT = 8000

#Secondary Connection Port
#This port is used during set up when getting next node.
#The secondary connection is only used to get IP for next noded
#then the connection is closed
SC_PORT = 9000

#General Timeout
#This timeout is how long the workstation will wait 
#for any reply from a node before it throws an error
GEN_TIMEOUT = 5.0

#Run Timout
#This timeout is how long the workstation will wait 
#for a reply from a node after sending the "Run" command
RUN_TIMEOUT = 30.0

#SC_TIMEOUT
#This timeout is how long the workstation will wait 
#for the second connection from a node during setup
SC_TIMEOUT = 5.0

