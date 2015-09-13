CC=$(CROSS_COMPILE)gcc

all: uuc sdimage

uuc: uu.c
	$(CC) $(CFLAGS) uu.c -o uuc -lpthread

sdimage: sdimage.c
	$(CC) $(CFLAGS) sdimage.c -o sdimage

install:
	mkdir -p   $(DEST_DIR)
	cp linuxrc $(DEST_DIR)
	mkdir -p   $(DEST_DIR)/usr/bin
	cp uu      $(DEST_DIR)/usr/bin
	cp sdimage $(DEST_DIR)/usr/bin

clean:
	rm -f uuc
	rm -f sdimage
