CC=gcc
CFlags=-Wall
Targets=daytimeShowClientSrv

all:$(Targets)

daytimeShowClientSrv:daytimeShowClientSrv.o
	$(CC) $(CFlags) -o daytimeShowClientSrv daytimeShowClientSrv.o -lmyunp

clean:
	rm *.o $(Targets)
