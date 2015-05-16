CC        	:= gcc
LD        	:= gcc

#MODULES	:= test frecuencia
MODULES   	:= $(shell ls src)
SRC_DIR	   	:= $(addprefix src/,$(MODULES))
BUILD_DIR 	:= $(addprefix build/,$(MODULES)) bin
INC_DIR   	:= $(addprefix include/,$(MODULES))

SRC       	:= $(foreach sdir,$(SRC_DIR),$(wildcard $(sdir)/*.c))
OBJ       	:= $(patsubst src/%.c,build/%.o,$(SRC))
INCLUDES  	:= -Iinclude $(addprefix -I,$(INC_DIR))

vpath %.c $(SRC_DIR)

define make-goal
$1/%.o: %.c
	$(CC) $(INCLUDES) -c $$< -o $$@
endef

.PHONY: all checkdirs clean

all: checkdirs bin/test.out

bin/test.out: $(OBJ)
	$(LD) $^ -o $@

checkdirs: $(BUILD_DIR)

$(BUILD_DIR):
	@mkdir -p $@

clean:
	@rm -rf $(BUILD_DIR)
	@rm -rf bin/*.out
	@rm -rf build

$(foreach bdir,$(BUILD_DIR),$(eval $(call make-goal,$(bdir))))