CFLAGS=-Wall -g
all: pipe socketpair
pipe:
	mkdir -p bin
	cc src/pipe.c -o bin/pipe
socketpair:
	mkdir -p bin
	cc src/socketpair.c -o bin/socketpair
clean:
	cd bin
	rm -f pipe
	rm -f socketpair
