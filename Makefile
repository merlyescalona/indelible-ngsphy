CC=g++
CFLAGS=-lm
BIN=bin
SRC=src
PROGRAM=indelible-ngsphy

$(PROGRAM):
	$(CC) -o $(BIN)/$(PROGRAM) -O4 $(SRC)/indelible.cpp $(CFLAGS)

debug:
	$(CC) -g -o $(BIN)/$(PROGRAM) -O4 $(SRC)/indelible.cpp $(CFLAGS)
clean:
	rm -f $(BIN)/$(PROGRAM)
