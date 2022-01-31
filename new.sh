#!/usr/bin/sh
set -e

name="$1"
if [ -z "$name" ]; then
	name="$(date +"%Y-%m-%dT%H:%M:%S")"
fi
./mount.sh
sudo btrfs sub snap ./root/clean "./root/$name"
./mount.sh "$name"

