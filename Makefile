BISON=bison -d
LEX=flex
CC=g++
EXEC_NAME=ex4.exe
CFLAGS=-Wno-write-strings

all: coins

coins: bison lex
		$(CC) $(CFLAGS) *.cpp *.c -o $(EXEC_NAME)
		
bison:
		$(BISON) times.ypp
		
lex: bison
		$(LEX) times.lex
