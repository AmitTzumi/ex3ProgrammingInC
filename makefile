isort.o: question1.c question1.h
	gcc -Wall -g -c question1.c -o isort.o

libisort.a: isort.o
	ar -rcs libisort.a isort.o

isort: isort.o libisort.a
	gcc -Wall -g -o isort isort.o libisort.a

txtfind.o: question2.c question2.h
	gcc -Wall -g -c question2.c -o txtfind.o

libtxtfind.a: txtfind.o
	ar -rcs libtxtfind.a txtfind.o

txtfind: txtfind.o libtxtfind.a
	gcc -Wall -g -o txtfind txtfind.o libtxtfind.a

.PHONY: clean all isort myisort txtfind mytxtfind

myisort: libisort.a

mytxtfind: libtxtfind.a

all: libisort.a isort isort.o libtxtfind.a txtfind txtfind.o

clean:
	rm -f *.o *.a *.so isort
