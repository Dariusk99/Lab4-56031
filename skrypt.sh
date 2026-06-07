#!/bin/bash

if [ "$1" = "--date" ]; then
    date

elif [ "$1" = "--logs" ]; then

    for i in {1..100}
    do
        nazwa="log${i}.txt"

        echo "Nazwa pliku: $nazwa" > "$nazwa"
        echo "Utworzony przez: $(basename "$0")" >> "$nazwa"
        echo "Data: $(date)" >> "$nazwa"
    done

fi