CFLAGS := -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I../../include -c 

all: 
	clang $(CFLAGS) -c *.c
	clang -c -m32 -o start.o start.s
