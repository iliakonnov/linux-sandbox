#!/usr/bin/bash
set -ex

fallocate -l 15G fs.img
mkfs.btrfs ./fs.img
./mount.sh
sudo btrfs sub create ./root/clean
./mount.sh clean
sudo pacstrap -c ./root base base-devel
./umount.sh

