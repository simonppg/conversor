CURRENT_C		:= $(shell find -name "bd.c")
CURRENT_O 		:= $(patsubst ./$(SRCDIR)/%,./$(BUILDDIR)/%,$(CURRENT_C:.$(SRCEXT)=.$(OBJEXT)))
MYSQL_FLAGS 	:= `mysql_config --cflags`
MYSQL_LIBS 		:= `mysql_config --libs`
$(CURRENT_O): CFLAGS+= $(MYSQL_FLAGS)
$(TARGET): LIBS += $(MYSQL_LIBS)