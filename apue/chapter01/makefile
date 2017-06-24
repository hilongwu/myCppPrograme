CC=gcc
CFlags=-Wall
VAPTH=../apue.3e
Target=ls_s

all:$(Target)

.PHONY:all

ls_s:ls_s.o
	$(CC) $(CFlags) -o ls_s ls_s.o -lapue

clean:
	rm $(Target) *.o
