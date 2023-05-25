# * Compilation Makefile *
#  Create a shared library to be compiled with another program
#
# @QWERTYghri

include conf.mk

OBJSET		:= ./src/private/*.c

.PHONY: all clean install
all: libngraphics.so

libngraphics.so: $(OBJSET)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LIB) -fPIC -shared -o $@ $^
	
libngraphics.a: $(OBJSET)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LIB) -c $^
	ar -rcs $@ *.o

install:
	mkdir -p $(SHARED_OBJ)
	mkdir -p $(SHARED_HEADER)
	
	install *.so $(SHARED_OBJ)
	install ./src/public/ngraphics.h $(SHARED_HEADER)
uninstall:
	-rm -rf $(SHARED_OBJ)/libngraphics.so
	-rm -rf $(SHARED_HEADER)/ngraphics.h

clean:
	-rm -rf *.o *.so *.a
