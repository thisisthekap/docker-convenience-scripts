#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 VolumeName"
    exit 1;
fi
cat $1.tgz | docker run --rm -i -v $1:/$1 alpine tar xzf - -C /$1
