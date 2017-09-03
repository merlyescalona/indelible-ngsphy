C=g++
CFLAGS=-lm
BIN=bin
SRC=src
PROGRAM=indelible-ngsphy

$(PROGRAM):
	$(CC) -o $(BIN)/$(PROGRAM) $(SRC)/indelible.cpp $(CFLAGS)

debug:
	$(CC) -g -o $(BIN)/$(PROGRAM) $(SRC)/indelible.cpp $(CFLAGS)
clean:
	rm -f $(BIN)/$(PROGRAM)
