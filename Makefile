# * Compilation Makefile *
#  Create a shared library to be compiled with another program
#
# @QWERTYghri

include conf.mk

.PHONY: obj all clean

all: obj libngraphics.so

obj: ./src/public ./src/private
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LIB) -c $^

libngraphics.so: ./*.o
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LIB) -fPIC -shared -o $@ $^
	
clean:
	-rm -rf *.o *.so
