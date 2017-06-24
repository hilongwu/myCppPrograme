objs=__malloc_alloc_template.o main.o
cpps=__malloc_alloc_template.cpp main.cpp
cflags=-std=c++11
mycompiler=clang++

main:$(objs)
	$(mycompiler) $(cflags) -o   main $(objs)
__malloc_alloc_template.o:__malloc_alloc_template.h __malloc_alloc_template.cpp
	$(mycompiler) $(cflags) -c  __malloc_alloc_template.cpp
main.o:main.h __malloc_alloc_template.h main.cpp
	$(mycompiler) $(cflags) -c  main.cpp


.PHONY:clean
clean:
	rm main $(objs)
