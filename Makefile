CFLAGS=-Wall -g
all: pipe
pipe:
	cc pipe.c -o pipe.o
clean:
	rm -f pipe
