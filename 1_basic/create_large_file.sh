#!/bin/bash
filename=1GB.bin

dd if=/dev/zero of=$filename bs=1073741824 count=1

stat $filename
