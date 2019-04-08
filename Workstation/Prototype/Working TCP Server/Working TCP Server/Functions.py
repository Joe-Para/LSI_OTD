import socket

def Initialize():
    print ("Initializing...")

    # Empty host works for windows with multipule interfaces
    HOST = ''  # Symbolic name meaning all available interfaces
    PORT = 8000  # Arbitrary non-privileged port

    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((HOST, PORT))
    s.listen(5)

    while 1:
        try:
            conn, addr = s.accept()
            print('Connected by', addr)
            recdata = conn.recv(1024)
            print('message: ', recdata)
        except socket.error as e:
            print('socket error: ', e)
        except:
            print('something else is wrong')
    #s.close()



def RunAll():
    print ("Run All")
    return


def SetUp():
    print ("Set Up")
    return


def PrintLastRun():
    print ("Last Run")
    return




