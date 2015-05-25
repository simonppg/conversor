MYSQLFLAGS 	= `mysql_config --cflags --libs`
$(BUILDDIR)/%.$(OBJEXT):  CFLAGS+= $(MYSQLFLAGS)
$(TARGET): LIB += $(MYSQLFLAGS)