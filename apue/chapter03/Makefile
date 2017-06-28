CC=gcc
Target=describe_fd
CFLAGS=-Wall 
all:$(Target)
.PHONY:all
describe_fd:describe_fd.o
	$(CC) $(CFLAGS) -o describe_fd describe_fd.o -lapue
describe_fd.o:

clean:
	rm *.o $(Target)
