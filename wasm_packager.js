let fs = require('fs')
let content = fs.readFileSync('./xxhsum.wasm')
let bytes = Array.from(content)
let output = "let xxhash_wasm_payload = new Uint8Array([" + bytes +"])"
fs.writeFileSync('./xxhsum.payload.js',output)
console.log(output)