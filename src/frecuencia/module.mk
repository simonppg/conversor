CURRENT_C		= $(shell find -name "frecuencia.c")
CURRENT_O 		= $(patsubst ./$(SRCDIR)/%,./$(BUILDDIR)/%,$(CURRENT_C:.$(SRCEXT)=.$(OBJEXT)))
$(CURRENT_O): CFLAGS+= -Wextra
$(TARGET): LIB += $(MYSQLFLAGS)