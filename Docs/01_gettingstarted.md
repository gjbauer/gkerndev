Gabe's Kernel Development Tutorial: Getting Started



Getting Started
---------------

Kernel development is a lengthy process of writing code, as well as debugging various
system components. This may seem to be a rather daunting task at first, however you
don't nessarily require a massive toolset to write your own kernel. This kernel
development tutorial deals mainly with using the Grand Unified Bootloader (GRUB) to
load your kernel into memory. GRUB needs to be directed to a protected mode binary
image: this 'image' is our kernel, which we will be building.

For this tutorial, you will need at the very least, a general knowledge of the C
programming language. X86 Assembler knowledge is highly recommended and beneficial as
it will allow you to manipulate specific registers inside your processor. This being
said, your toolset will need at the bare minimum, a C compiler that can generate
32-bit code, a 32-bit Linker, and an Assembler which is able to generate 32-bit x86
output.

For hardware, you must have a computer which is capable of running either Bochs or
QEMU in i386 mode.

### Required Hardware for Testbed

- 4MBytes of RAM  
- a VGA compatible video card with monitor  
- a Keyboard  
- a storage medium

### Recommended Hardware for Development
 
- 32MBytes of RAM  
- a VGA compatible videocard with monitor  
- a Keyboard  
- a storage medium
- A flavour of Unix (Linux, FreeBSD)  
- an Internet connection to look up documents  
(A mouse is highly recommended)

Toolset
-------

### Compilers & Assembler

- The LLVM Toolchain

### Virtual Machines

- Bochs [Unix/Windows]
- QEMU [Electricity]

