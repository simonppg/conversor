MYSQLFLAGS 	= `mysql_config --cflags --libs`
obj/bd/bd.o:  CFLAGS+= $(MYSQLFLAGS)
$(TARGET): LIB += $(MYSQLFLAGS)