#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "Error: Source directory '$filesdir' does not exist."
    exit 1
fi

filecount=$(find $filesdir -type f | wc -l)

matchcount=0
for file in $(find $filesdir -type f); do
    if grep -q "$searchstr" "$file"; then
        matchcount=$((matchcount + 1))
    fi
done

echo "The number of files are $filecount and the number of matching lines are $matchcount"
