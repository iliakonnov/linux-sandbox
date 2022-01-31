#!/usr/bin/sh
set -e

mkdir -p ./root
if mountpoint -q ./root; then
	sudo umount ./root
fi

if [ -z "$1" ]; then
	sudo mount ./fs.img ./root -o "subvol=$1"
else
	sudo mount ./fs.img ./root -o "subvol=$1"
fi
