#!/bin/sh 
DIR=$(cd `dirname $0` && pwd)
cd $DIR

if [ ! -d "./xxHash"  ]; then
    git clone https://github.com/Cyan4973/xxHash.git
fi


cd $DIR/xxHash
make clean
export CC=emcc; make
cp xxhsum.wasm $DIR
cp xxhsum $DIR/xxhsum.js
cd $DIR
#rm -rf $DIR/xxHash