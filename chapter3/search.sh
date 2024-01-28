#!/bin/bash
usage="Usage: search.sh <file> <search string> <operation>"

if [ ! "$#" -eq 3 ]; then
    echo "$usage"
    exit 2
fi

[ ! -f "$1" ] && exit 3

case "$3" in
[cC])
    mesg="Cont line number"
    opt="-c"
    ;;
[pP])
    mesg="Print line number"
    opt=""
    ;;
[dD])
    mesg="Remove match line"
    opt="-v"
    ;;
*)
    echo "Cannot evaluate args"
    exit 1
    ;;
esac
echo "$mesg"
grep $opt "$2" "$1"
exit 0
