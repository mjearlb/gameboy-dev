# Makefile for Game Boy project using local GBDK

# Path to GBDK folder (relative to repo root)
GBDK_PATH := ./gbdk

# Compiler
CC := $(GBDK_PATH)/bin/lcc

# Source and output
SRC := $(wildcard src/*.c)
OUT := mygame.gb

# Default target
all: $(OUT)

# Build the ROM
$(OUT): $(SRC)
	$(CC) -o $@ $(SRC)

# Clean build files
clean:
	rm -f $(OUT) *.o *.lst *.map *.sym

.PHONY: all clean