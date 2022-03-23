mkdir -p .out
tinygo build -o .out/go-pst.wasm -no-debug -target wasm src/main.go
