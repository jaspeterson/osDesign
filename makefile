# Makefile for Shell Lab 
#

CC = gcc

# if it gives an error and asks for -fPIC add the -no-pie flag to the CFLAGS 
CFLAGS = -g -Wall

all: shell

os345.o: os345.c os345.h os345config.h
	$(CC) $(CFLAGS) -c os345.c

os345fat.o: os345fat.c os345fat.h
	$(CC) $(CFLAGS) -c os345fat.c

os345interrupts.o: os345interrupts.c
	$(CC) $(CFLAGS) -c os345interrupts.c

os345lc3.o: os345lc3.c os345lc3.h
	$(CC) $(CFLAGS) -c os345lc3.c

os345mmu.o: os345mmu.c
	$(CC) $(CFLAGS) -c os345mmu.c

os345p1.o: os345p1.c
	$(CC) $(CFLAGS) -c os345p1.c

os345p2.o: os345p2.c
	$(CC) $(CFLAGS) -c os345p2.c

os345p3.o: os345p3.c
	$(CC) $(CFLAGS) -c os345p3.c

os345p4.o: os345p4.c
	$(CC) $(CFLAGS) -c os345p4.c

os345p5.o: os345p5.c
	$(CC) $(CFLAGS) -c os345p5.c

os345p6.o: os345p6.c
	$(CC) $(CFLAGS) -c os345p6.c

os345park.o: os345park.c os345park.h
	$(CC) $(CFLAGS) -c os345park.c

os345semaphores.o: os345semaphores.c
	$(CC) $(CFLAGS) -c os345semaphores.c

os345signals.o: os345signals.c os345signals.h
	$(CC) $(CFLAGS) -c os345signals.c

os345tasks.o: os345tasks.c
	$(CC) $(CFLAGS) -c os345tasks.c

shell: os345.o os345fat.o os345interrupts.o os345lc3.o os345mmu.o os345p1.o os345p2.o os345p3.o os345p4.o os345p5.o os345p6.o os345park.o os345semaphores.o os345signals.o os345tasks.o
	$(CC) $(CFLAGS) os345.o os345fat.o os345interrupts.o os345lc3.o os345mmu.o os345p1.o os345p2.o os345p3.o os345p4.o os345p5.o os345p6.o os345park.o os345semaphores.o os345signals.o os345tasks.o -o shell

clean:
	rm -f *~ *.o shell core *.tar *.zip *.gzip *.bzip *.gz
