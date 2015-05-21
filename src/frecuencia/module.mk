CFLAGS 	= $(filter-out `mysql_config --cflags --libs`,$(CFLAGS))
CFLAGS 	+= -lm