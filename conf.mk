#Installation
SHARED_OBJ	:= /usr/lib
SHARED_HEADER	:= /usr/include

#General Flags
CC	 ?= gcc
CFLAGS	 := -std=c99 -Wpedantic -Wall -Wextra 
CPPFLAGS := -D_POSIX_C_SOURCE=200809L
LIB	 := -lncurses

#Optimization
OFLAG	 := -g -O0
#OFLAG	 := -Os
