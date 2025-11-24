#!/bin/sh
./asmfmt -w $(find . -name "*.asm" -o -name "*.s")
