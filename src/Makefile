# Example Makefile for demo project
# Copied from http://www.enteract.com/~rneswold/avr/x421.html
# with "clean" added.

CC=avr-gcc
OBJCOPY=avr-objcopy

CFLAGS=-g -mmcu=atmega32

rom.hex : demo.out
	$(OBJCOPY) -j .text -O ihex demo.out rom.hex

demo.out : demo.o
	$(CC) $(CFLAGS) -o demo.out -Wl,-Map,demo.map demo.o

demo.o : demo.c
	$(CC) $(CFLAGS) -Os -c demo.c

clean:
	rm -f *.o *.out *.map *.hex
