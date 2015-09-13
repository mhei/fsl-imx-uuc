CC ?= $(CROSS_COMPILE)gcc
BINDIR ?= /usr/sbin
PROGRAMS = uuc sdimage

all: $(PROGRAMS)

uuc: uu.c
	$(CC) $(CFLAGS) uu.c -o uuc -lpthread

sdimage: sdimage.c
	$(CC) $(CFLAGS) sdimage.c -o sdimage

install:
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 linuxrc $(DESTDIR)
	install -m 755 $(PROGRAMS) $(DESTDIR)$(BINDIR)

clean:
	rm -f $(PROGRAMS)
