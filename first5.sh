#! /usr/bin/sh

# Use the dummy files from first4
for FILENAME in *_dummy; do
    [ -f "$FILENAME" ] || continue
    echo "$FILENAME"
done