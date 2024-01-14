all: run

fn1.o: fn1.asm
	nasm -f elf -g -F stabs fn1.asm

flog.o: flog.asm
	nasm -f elf -g -F stabs flog.asm

fexp.o: fexp.asm
	nasm -f elf -g -F stabs fexp.asm

froot.o: froot.asm
	nasm -f elf -g -F stabs froot.asm

program: fn1.o main.c flog.o fexp.o froot.o
	gcc -m32 -g -o program fn1.o main.c flog.o fexp.o froot.o -no-pie

run: program
	./program

clean:
	rm -rf *o program