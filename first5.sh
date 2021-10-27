#! /usr/bin/sh

# Use the dummy files from first4
NUM=0

# For Loop with iterator, done entirely in shell, no bash.
#       It was the hardest thing to figure out incrementing.
for FILENAME in *_dummy; do
    [ -f "$FILENAME" ] || continue
    echo "${NUM}: ${FILENAME}"
    NUM=$(expr $NUM + 1)
done