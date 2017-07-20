CC=gcc
CFlags=-Wall
Targets=printstats access_r_open umask chmod_remove_r_setgid deleteAfterWhile update_changetime_only dirinfo_cnt_myftw getcwd show_dev

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

update_changetime_only:update_changetime_only.o
	$(CC) $(CFlags) -o update_changetime_only update_changetime_only.o -lapue

dirinfo_cnt_myftw:dirinfo_cnt_myftw.o
	$(CC) $(CFlags) -o dirinfo_cnt_myftw dirinfo_cnt_myftw.o

getcwd:getcwd.o
	$(CC) $(CFlags) -o getcwd getcwd.o

show_dev:show_dev.o
	$(CC) $(CFlags) -o show_dev show_dev.o

clean:
	rm *.o $(Targets)
