# * Compilation Makefile *
#  Create a shared library to be compiled with another program
#
# @QWERTYghri

include conf.mk

OBJSET	:= ./src/public/*.h ./src/private/*.c

.PHONY: all clean
all: libngraphics.so libngraphics.a

libngraphics.so: $(OBJSET)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LIB) -fPIC -shared -o $@ $^
	
libngraphics.a: $(OBJSET)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LIB) -c $^
	ar -rcs $@ *.o
	
clean:
	-rm -rf *.o *.so *.a
