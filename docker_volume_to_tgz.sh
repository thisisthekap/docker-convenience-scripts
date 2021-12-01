#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 VolumeName"
    exit 1;
fi
docker run --rm -v $1:/$1 alpine tar -czv --to-stdout -C /$1 . > $1.tgz
