CC=gcc
CFlags=-Wall

Targets=fprintftest tmpnam_tmpfile mkstemp

all:$(Targets)

fprintftest:fprintftest.o
	$(CC) $(CFlags) -o fprintftest fprintftest.o 

tmpnam_tmpfile:tmpnam_tmpfile.o
	$(CC) $(CFlags) -o tmpnam_tmpfile tmpnam_tmpfile.o

mkstemp:mkstemp.o
	$(CC) $(CFlags) -o mkstemp mkstemp.o
clean:
	rm *.o $(Targets)
