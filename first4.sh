#!/bin/sh
# Environment Variables Practice
# . operator will source a script
# export will send that environment variable to newly launched script
echo "DAVAR is: $DAVAR"
DAVAR="hi there"
echo "DAVAR is: $DAVAR"

# Random file maker -- Note the curly braces
echo "Let's create a random file! Give me your name"
read USER_NAME
echo "$USER_NAME file coming up!"
touch "${USER_NAME}_dummy"

echo "Here's a list of all the \"dummies\" in here."
echo *_dummy