#!/bin/bash
while true; do
    clear
    echo "Choose an item: a, b, or c"
    echo "a: Backup"
    echo "b: Display calendar"
    echo "c: Exit"
    read -sn1
    case "$REPLY" in
    a)
        echo "Backing up data..."
        ;;
    b)
        echo "Displaying calendar..."
        ;;
    c)
        exit 0
        ;;
    esac
    read -n1 -p "Press any key to continue"
done
