# ZeroRing

A minimal bare-metal x86 bootloader written in NASM assembly. Boots directly from the MBR and prints a message to the screen using BIOS interrupts — no OS, no runtime, no dependencies.

## What it does

- Runs in 16-bit real mode
- Uses BIOS `int 0x10` to print characters to the screen
- Fits entirely within a 512-byte boot sector

## Prerequisites

```bash
sudo apt install nasm qemu-system-x86
```

## Building & Running

Use the provided `start` script:

```bash
./start
```

This will assemble `boot.asm` with NASM and launch it in QEMU automatically.

### Manual steps

```bash
# Assemble
nasm -f bin boot.asm -o boot.bin

# Run in QEMU
qemu-system-x86_64 -drive format=raw,file=boot.bin
```

## Project Structure

```
ZeroRing/
├── boot.asm   # Bootloader source
├── boot.bin   # Assembled binary (generated)
└── start      # Build & run script
```
