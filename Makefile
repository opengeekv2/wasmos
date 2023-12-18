# https://surma.dev/things/c-to-webassembly/
hello.wasm:
	clang --target=wasm32 -O3 -flto -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,--lto-O3 ./hello.c -o hello.wasm

clean:
	rm -rf hello.wasm
	