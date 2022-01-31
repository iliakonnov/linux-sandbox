#!/usr/bin/sh
set -e

name="$1"
if [ -z "$name" ]; then
	name="$(date +"%Y-%m-%dT%H:%M:%S")"
fi
sudo mount ./fs.img ./root
sudo btrfs sub del "./root/$name"
sudo umount ./root

