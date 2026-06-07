#!/bin/bash

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
    date

elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then

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

elif [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Dostepne opcje:"
    echo "--date        - wyświetl dzisiejszą date"
    echo "--logs        - stwórz 100 plików log"
    echo "--logs N      - stwórz N plików log"
    echo "--help        - wyświetl pomoc"

elif [ "$1" = "--init" ]; then

    git clone "$(git config --get remote.origin.url)"

    export PATH=$PATH:$(pwd)

    echo "Repozytorium sklonowane"
	
fi