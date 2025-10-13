#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"


