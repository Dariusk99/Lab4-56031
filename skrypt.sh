#!/bin/bash

if [ "$1" = "--date" ]; then
    date

elif [ "$1" = "--logs" ]; then

    liczba=100

    if [ -n "$2" ]; then
        liczba=$2
    fi

    for ((i=1; i<=liczba; i++))
    do
        nazwa="log${i}.txt"

        echo "Nazwa pliku: $nazwa" > "$nazwa"
        echo "Utworzony przez: $(basename "$0")" >> "$nazwa"
        echo "Data: $(date)" >> "$nazwa"
    done

fi