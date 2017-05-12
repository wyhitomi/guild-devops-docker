#!/bin/bash
docker run --rm -it -P --name volume_from_host -v $PWD/volume_from_host/:/data debian bash -c 'ls -la /data && (set -x;/data/hello.sh)'
