#!/bin/sh
# This is a script I created to automate setting up git.

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "<the_command> could not be found"
    exit
fi