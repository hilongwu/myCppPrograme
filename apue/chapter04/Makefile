CC=gcc
CFlags=-Wall
Targets=printstats access_r_open umask chmod_remove_r_setgid deleteAfterWhile

all:$(Targets)
.PHONY:all

printstats:printstats.o
	$(CC) $(CFlags) -o printstats printstats.o -lapue

access_r_open:access_r_open.o
	$(CC) $(CFlags) -o access_r_open access_r_open.o -lapue

umask:umask.o
	$(CC) $(CFlags) -o umask umask.o -lapue

chmod_remove_r_setgid:chmod_remove_r_setgid.o
	$(CC) $(CFlags)  -o chmod_remove_r_setgid chmod_remove_r_setgid.o -lapue

deleteAfterWhile:deleteAfterWhile.o
	$(CC) $(CFlags) -o deleteAfterWhile deleteAfterWhile.o -lapue

clean:
	rm *.o $(Targets)
