MODULE_big = complex_number
OBJS = complex_number.o
EXTENSION=complex_number
DATA = 
DATA_built = 
DOCS = README.md
REGRESS = 
ENCODING = UTF8


ifdef USE_PGXS
PGXS := $(shell pg_config --pgxs)
include $(PGXS)
else
subdir = contrib/complex_number
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif