CROSS_COMPILE ?=
CC = $(CROSS_COMPILE)gcc

.PHONY: clean

writer: writer.c
	$(CC) writer.c -o writer

clean:
	rm -f writer
