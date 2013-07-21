CFLAGS=-Wall -g
all: pipe socketpair udgramrecv udgramsend
pipe:
	mkdir -p bin
	cc src/pipe.c -o bin/pipe
socketpair:
	mkdir -p bin
	cc src/socketpair.c -o bin/socketpair
udgramrecv:
	mkdir -p bin
	cc src/udgramrecv.c -o bin/udgramrecv
udgramsend:
	mkdir -p bin
	cc src/udgramsend.c -o bin/udgramsend
clean:
	cd bin
	rm -f pipe
	rm -f socketpair
	rm -f udgramrecv
	rm -f udgramsend
