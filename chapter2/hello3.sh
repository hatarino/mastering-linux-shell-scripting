#!/bin/bash

: <<"COMMENT"
This is 
a multiline comment.
type :
: is a shell builtin that does nothing and always succeeds.
COMMENT

echo -n "Hello $(basename $0)! May I ask your name: "
read
echo "Hello $REPLY"

read -p "May I ask your name: " name
echo "Hello $name"
read -sn1 -p "Press any key to exit"
echo
exit 0
