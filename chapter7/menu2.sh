#!/bin/bash
to_lower() {
    input="$1"
    output=$(echo $input | tr [A-Z] [a-z])
    echo $output
}

do_backup() {
    echo "Backing up data..."
}

show_cal() {
    echo "Displaying calendar..."
}

while true; do
    clear
    echo "Choose an item: a, b, or c"
    echo "a: Backup"
    echo "b: Display calendar"
    echo "c: Exit"
    read -sn1
    REPLY=$(to_lower "$REPLY")
    case "$REPLY" in
    a) do_backup ;;
    b) show_cal ;;
    c) exit 0 ;;
    esac
    read -n1 -p "Press any key to continue"
done
