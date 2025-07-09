.DEFAULT:= build
.PHONY: all clean build

all: clean build

clean:
	@echo "Cleaning build directory..."
	rm -rf build/*

build:
	@echo "Building project with CMake..."
	mkdir -p build && cd build && cmake .. && make
