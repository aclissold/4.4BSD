CFLAGS=-Wall -g
all: pipe socketpair udgramrecv udgramsend idgramrecv idgramsend
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
idgramrecv:
	mkdir -p bin
	cc src/idgramrecv.c -o bin/idgramrecv
idgramsend:
	mkdir -p bin
	cc src/idgramsend.c -o bin/idgramsend
clean:
	cd bin
	rm -f pipe
	rm -f socketpair
	rm -f udgramrecv
	rm -f udgramsend
	rm -f idgramrecv
	rm -f idgramsend
