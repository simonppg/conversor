BUILD_DIR 	:= 	build
BIN_DIR 	:=	bin

#SRCS=$(wildcard *.c)

#OBJS=$(SRCS:.c=.o)

#all: test

#test: $(OBJS)
#	cc -c test.c $(OBJS) -o ../$(BUILD_DIR)/test.o



CC = gcc
CFLAGS = -c -Wall -g -Os
LD = $(CC)
LDFLAGS = -lfoo

TARGET = MyProject

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))

all: $(TARGET)

$(TARGET): $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) $^ -o ../../$(BUILD_DIR)/$@

clean:
	rm $(TARGET) $(OBJECTS)
