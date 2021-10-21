#Makefile#
CC = gcc
CFLAGS = -g
LIBS = -lm
calcul: calculate.o main.o
	gcc main.o calculate.o -o calcul $(LIBS)
calculate.o: calculate.c calculate.h
	gcc -c calculate.c $(CFLAGS)
main.o: main.c calculate.h
	gcc -c main.c $(CFLAGS)
clean: -rm calcul *.o*~
#End Makefile# 
