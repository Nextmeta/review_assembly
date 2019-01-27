
CFLAGS += -m32
PROGS =	cpuid cpuid2 bss fill movtest1 movtest2 movtest3 cmovtest \
	bswaptest cmpxchgtest
CC = gcc
all:	$(PROGS)

%: %.S 
	$(CC)  $@.S $(CFLAGS) -o $@

clean:
	rm -f $(PROGS) *.o
