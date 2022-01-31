#!/usr/bin/sh
set -e

./mount.sh
ls -l --color=always root
./umount.sh
