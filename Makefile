
CFLAGS += -m32
PROGS =	cpuid cpuid2 bss fill movtest1 movtest2 movtest3 cmovtest \
	bswaptest cmpxchgtest cmpxchg8btest bubblesort calltest   \
	flagbit looptest inttest bcdtest floattest fpuvals ssefloat\

CC = gcc
all:	$(PROGS)

%: %.S 
	$(CC)  $@.S $(CFLAGS) -o $@

clean:
	rm -f $(PROGS) *.o
