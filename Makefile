ifndef CC
CC=gcc
else
CC=g++
endif

CFLAGS= $(CFLAGS) -lm
PERF=-O4
DBG=-O0 -Wall
BIN=bin
SRC=src
PROGRAM=indelible-ngsphy


$(PROGRAM):
	$(CC) $(CFLAGS) $(PERF) -w -o $(BIN)/$(PROGRAM) $(SRC)/indelible.cpp

debug:
	@echo "Compiling into DEBUG mode."
	$(CC) $(CFLAGS) $(PERF) $(DBG) -g -o $(BIN)/$(PROGRAM) $(SRC)/indelible.cpp

clean:
	@echo "Removing executable and object files."
	rm -f $(BIN)/$(PROGRAM)
