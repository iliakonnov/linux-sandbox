#!/usr/bin/sh
set -e

user="$1"
if [ -z "$user" ]; then
	user="root"
fi

mkdir -p ./shared
exec sudo systemd-nspawn -D ./root -u "$user" --bind=$PWD/shared:/shared -M sandbox "/usr/bin/bash"
