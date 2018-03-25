
CC      = gcc
CFLAGS  = -Wall -Wpedantic -O

all:
	$(CC) $(CFLAGS) -o outb outb.c
	$(CC) $(CFLAGS) -o outw outw.c
	$(CC) $(CFLAGS) -o outl outl.c
	$(CC) $(CFLAGS) -o inb  inb.c
	$(CC) $(CFLAGS) -o inw  inw.c
	$(CC) $(CFLAGS) -o inl  inl.c

install:
	mv outb /sbin/
	mv outw /sbin/
	mv outl /sbin/
	mv inb /sbin/
	mv inw /sbin/
	mv inl /sbin/

clean:
	rm outb outw outl inb inw inl 
