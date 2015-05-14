CODE_DIR 	:= 	frecuencia 	#falta optimisar esto
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
LDFLAGS = 

TARGET = MyProject

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(MAKE) -C $(CODE_DIR)
	$(LD) -o ../$(BIN_DIR)/$@ ../$(BUILD_DIR)/$^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) $^ -o ../$(BUILD_DIR)/$@ 

#optimisar esto

clean:
	rm $(TARGET) $(OBJECTS)
