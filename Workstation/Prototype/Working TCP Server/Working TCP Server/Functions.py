import socket

def Initialize():
    print ("Initializing...")

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
            print('Message:', recdata)
            while 1:
                message = input('Type on/off to switch LED: ')
                conn.send(str.encode(message))
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




