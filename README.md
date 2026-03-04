# ZeroRing

ZeroRing is a minimal bare‑metal kernel experiment.

## Prerequisites

The following tools are required on a Linux host:

```sh
sudo apt install nasm qemu-system-x86
either
```

- `nasm` – the Netwide Assembler, used to assemble `boot.asm` into a flat binary.
- `qemu-system-x86_64` – the QEMU emulator to boot and test the resulting image.

## Building

Run the assembler command in the root of the repository:

```sh
nasm -f bin boot.asm -o boot.bin
```

This produces `boot.bin`, a 512‑byte boot sector containing the kernel entry point and any initialization code.

## Running

Launch the built image under QEMU:

```sh
qemu-system-x86_64 -drive format=raw,file=boot.bin
```

QEMU will start a virtual machine, load your boot sector, and transfer control to the code contained within it.
