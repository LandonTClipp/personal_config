#!/bin/bash
# This line will untar a file in current working directory while not preserving the tar's directory structure.

if [ $# -ne 1 ]; then
  echo "Usage: $(basename $0) [tar file]"
  exit 1
fi

tar -xf "$1" --transform='s/.*\///'
