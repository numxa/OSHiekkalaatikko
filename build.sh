#! /bin/bash

# Run this file to build the kernel

export PATH="$HOME/opt/cross/bin:$PATH"

make clean
make

mkdir -p isodir/boot/grub
cp myos.bin isodir/boot/myos.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir