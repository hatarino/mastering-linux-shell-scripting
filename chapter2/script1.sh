#!/bin/bash
echo $1
echo $2
echo $3

while test -n "$1"
do
    case "$1" in
        -a) echo "-a option passed" ;;
        -b) param="$2"
            echo "-b option passed, with value $param"
            shift ;;
        -c) echo "-c option passed" ;;
        --) shift
            break ;;
        *) echo "Option $1 not an option" ;;
    esac
    shift
done
# end of option processing
# start of parameter processing
num=1
for param in $@
do
    echo "#$num: $param"
    num=$(( $num + 1 ))
done
