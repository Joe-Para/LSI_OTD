import socket

def Initialize():
    print ("Initializing...")

    HOST = 'localhost'  # Symbolic name meaning all available interfaces
    PORT = 8000  # Arbitrary non-privileged port

    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((HOST, PORT))
    s.listen(1)
    conn, addr = s.accept()
    with conn:
        print('Connected by', addr)
    #s.send(b'Hello')
    s.close()



def RunAll():
    print ("Run All")
    return


def SetUp():
    print ("Set Up")
    return


def PrintLastRun():
    print ("Last Run")
    return




