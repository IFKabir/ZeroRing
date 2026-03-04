# ZeroRing

ZeroRing is a minimal bare‑metal kernel experiment.

## Prerequisites

`sudo apt install nasm qemu-system-x86`

## Building

`nasm -f bin boot.asm -o boot.bin`

## Running

`qemu-system-x86_64 -drive format=raw,file=boot.bin`
