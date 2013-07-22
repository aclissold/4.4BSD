CFLAGS=-Wall -g
all: pipe socketpair udgramrecv udgramsend idgramrecv idgramsend streamwrite \
		streamrecv streamselect
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
streamwrite:
	mkdir -p bin
	cc src/streamwrite.c -o bin/streamwrite
streamrecv:
	mkdir -p bin
	cc src/streamrecv.c -o bin/streamrecv
streamselect:
	mkdir -p bin
	cc src/streamselect.c -o bin/streamselect
clean:
	cd bin
	rm -f pipe
	rm -f socketpair
	rm -f udgramrecv
	rm -f udgramsend
	rm -f idgramrecv
	rm -f idgramsend
	rm -f streamrecv
	rm -f streamwrite
	rm -f streamselect
