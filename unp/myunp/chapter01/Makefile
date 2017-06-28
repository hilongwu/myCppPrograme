CC=gcc
CFlags = -Wall
Targets:daytimecliv4

all:$(Targets)

daytimecliv4: daytimecliv4.o
	$(CC) $(CFlags) -o $@ $< -lmyunp

clean:
	rm *.o $(Targets)
