CODE_DIR 	:= 	src
OBJDIR 		:= 	build \
				bin
PROJECT_DIR :=	.

.PHONY: build_project

all: $(OBJDIR) build_project

$(OBJDIR):
	mkdir -p $@

build_project:
	$(MAKE) -C $(CODE_DIR)

clean:
	rm -r bin
	rm -r build