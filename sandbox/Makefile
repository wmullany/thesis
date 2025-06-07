# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -g -v

# Source files and output
SRC = kalman.c kalman_tb.c
# SRC = matmul.c
OBJ = $(SRC:.c=.o)
TARGET = kalman
# TARGET = mat

# Default target
all: $(TARGET)

# Build target
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Compile source files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target
.PHONY: clean

clean:
	rm -f $(OBJ) $(TARGET)