export PROJECT_DIR   	:=	$(shell pwd)
CODE_DIR 		:= 	src
OBJDIR 			:= 	build \
				bin

.PHONY: build_project

all: $(OBJDIR) build_project

$(OBJDIR):
	mkdir -pv $@

build_project:
	$(MAKE) -C $(CODE_DIR)

clean:
	rm -r bin
	rm -r build
