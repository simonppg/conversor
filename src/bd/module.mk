MYSQLFLAGS 	= `mysql_config --cflags --libs`
CFLAGS 	= $(MYSQLFLAGS)
LIB 	= $(MYSQLFLAGS)