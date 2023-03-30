CFLAGS=-std=c99 -Wall
CC=gcc

char-count: char_count.o
	$(CC) $(CFLAGS) char_count.o -o char-count

char_count.o: char_count.c
	$(CC) $(CFLAGS) -c char_count.c

test: char-count
	./test-char-count.sh

gh-test-char-count: clean char-count test

clean:
	rm -f char-count *.o
	rm -rf tests-out