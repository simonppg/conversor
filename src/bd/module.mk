CURRENT_C		= $(shell find -name "bd.c")
CURRENT_O 		= $(patsubst ./$(SRCDIR)/%,./$(BUILDDIR)/%,$(CURRENT_C:.$(SRCEXT)=.$(OBJEXT)))
MYSQLFLAGS 		= `mysql_config --cflags --libs`
$(CURRENT_O): CFLAGS+= $(MYSQLFLAGS)
$(TARGET): LIB += $(MYSQLFLAGS)