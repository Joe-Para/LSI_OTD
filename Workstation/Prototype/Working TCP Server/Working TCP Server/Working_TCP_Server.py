import socket

HOST = ''  # Symbolic name meaning all available interfaces
PORT = 8000  # Arbitrary non-privileged port

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(5)

while 1:
    try:
        print("Waiting for a connection on port: " + str(PORT))
        conn, addr = s.accept()
        print('Connected by', addr)
        conn.settimeout(100.0)
        while 1:
            message = input('Type in a command: ')
            conn.send(str.encode(message))
            reply = conn.recv(2048).decode("utf-8") 
            if not reply: break
            print(reply)
    except socket.error as e:
        print('socket error: ', e)
    except:
        print('something else is wrong')
print("Closing")
#s.close()