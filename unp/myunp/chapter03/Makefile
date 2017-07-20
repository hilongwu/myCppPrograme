CC=gcc
CFlags=-Wall 

Targets=byteorderget inet_pton_ipv4

all:$(Targets)

byteorderget:byteorderget.o
	$(CC) $(CFlags) -o byteorderget byteorderget.o -lmyunp

inet_pton_ipv4:inet_pton_ipv4.o
	$(CC) $(CFlags) -o inet_pton_ipv4 inet_pton_ipv4.o -lmyunp

clean:
	rm *.o $(Targets)
