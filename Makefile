# include ./build/Makefile

all: build

build: 
	mkdir -p build
	cmake -S . -B build
	make -s -C ./build

clean:
	rm -rf build

# dis:
# 	mkdir -p tmp
# 	readelf -a  > tmp/readelf.txt
# 	objdump -d -S main > tmp/dis.s

run: build
	./build/samples/library/sample_library