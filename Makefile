.PHONY: clean

all: build/MurmurHash2.o

build/MurmurHash2.o:
	mkdir -p build && \
	g++ -c -Wall -fPIC -I murmur -O2 \
		murmur/MurmurHash2.cpp \
		-o build/MurmurHash2.o

test: build/MurmurHash2-test
	./build/MurmurHash2-test

build/MurmurHash2-test: build/MurmurHash2.o
	gcc -Wall -fPIC -I murmur -O2 \
		build/MurmurHash2.o src/murmurhash2-test.c \
		-o build/MurmurHash2-test

clean:
	-rm -rf build
