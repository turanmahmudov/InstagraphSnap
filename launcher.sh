#!/bin/bash

if [ "$SNAP_ARCH" = "amd64" ]; then
    ARCH="x86_64-linux-gnu"
elif [ "$SNAP_ARCH" = "armhf" ]; then
    ARCH="arm-linux-gnueabihf"
elif [ "$SNAP_ARCH" == "arm64" ]; then
    ARCH="aarch64-linux-gnu"
else
    ARCH="$SNAP_ARCH-linux-gnu"
fi

export IS_DESKTOP=1 & exec $SNAP/opt/Instagraph/bin/Instagraph "$@"
