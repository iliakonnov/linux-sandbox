# linux-sandbox
This is just a small collections of scripts allowing creating containers for various experiments

# Preparation
First of all, you need to create btrfs image in `./fs.img` and install linux into `/clean` subvolume inside of it.

Hopefully, single `./install.sh` script can make it for you (it is not marked as executable, this is intended).
This script uses `pacstrap` for installing almost minimal Arch Linux.

Then you can mount and run this container: `./mount.sh clean && ./start.sh`. You can use it to install any packages you want.

# Creating containers
Finally, this `clean` container can be used for creating other containers based on it.

```
./new.sh ExampleContainer
./start.sh
# Do anything you want
./del.sh ExampleContainer
```

Also, you can simply `./umount.sh` it, so you can `./mount.sh ExampleContainer` later.

