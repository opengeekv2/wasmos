# https://surma.dev/things/c-to-webassembly/
# https://aransentin.github.io/cwasm/
kernel.wasm:
	clang --target=wasm32 -O3 -flto -nostdlib -Wl,--no-entry -Wl,--import-memory -Wl,--allow-undefined-file=wasm.syms -Wl,--export-all -Wl,--lto-O3 ./kernel.c -o kernel.wasm

clean:
	rm -rf kernel.wasm
	