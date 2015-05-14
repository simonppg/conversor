CODE_DIR 	:= 	frecuencia
BUILD_DIR 	:= 	build
BIN_DIR 	:=	bin

CC = cc
CFLAGS = -c -Wall -g -Os
LD = $(CC)
LDFLAGS = 

TARGET = MyProject

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(MAKE) -C $(CODE_DIR)
	$(LD) -o $(PROJECT_DIR)/$(BIN_DIR)/$@ $(PROJECT_DIR)/$(BUILD_DIR)/$^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) $^ -o $(PROJECT_DIR)/$(BUILD_DIR)/$@ 

clean:
	rm $(TARGET) $(OBJECTS)
