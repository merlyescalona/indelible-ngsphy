CC=g++
CFLAGS=-lm
BIN=bin
SRC=src
PROGRAM=indelible-ngsphy
PREFIX=/usr/local/bin

$(PROGRAM):
	$(CC) -o $(BIN)/$(PROGRAM) -O4 $(SRC)/indelible.cpp $(CFLAGS)

install:
	$(CC) -o $(PREFIX)/$(PROGRAM) -O4 $(SRC)/indelible.cpp $(CFLAGS)

debug:
	$(CC) -g -o $(BIN)/$(PROGRAM) -O4 $(SRC)/indelible.cpp $(CFLAGS)
clean:
	rm -f $(BIN)/$(PROGRAM) && rm -f $(PREFIX)/$(PROGRAM)
