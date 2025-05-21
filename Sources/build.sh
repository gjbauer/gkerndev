#!/bin/sh
# TODO: Make a Makefile!!
echo Now assembling, compiling, and linking your kernel:
gcc -c -m32 -o start.o start.s
echo Remember this spot here: We will add 'gcc' commands here to compile C sources

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o main.o main.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o scrn.o scrn.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o gdt.o gdt.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o idt.o idt.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o isrs.o isrs.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o irq.o irq.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o timer.o timer.c

gcc -m32 -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -ffreestanding -fno-builtin -fno-pie -I./include -c -o kb.o kb.c

echo This links all your files. Remember that as you add *.o files, you need to
echo add them after start.o. If you don't add them at all, they won't be in your kernel!

ld -melf_i386 -T link.ld -o kernel.bin start.o main.o scrn.o gdt.o idt.o isrs.o irq.o timer.o kb.o
echo Cleaning up object files...
rm *.o
echo Done!
