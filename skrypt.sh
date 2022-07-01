#!/bin/bash
option=$1
value=$2
if [ $option == "--date" ] || [ $option == "-d" ]
then
        echo $(date)
elif [ $option == "--logs" ] || [ $option == "-l" ]
then
        if [ -z $value ]
        then
                value=100
        fi
        for (( i = 1; i<=$value; i++ ))
        do
                echo log$i, $(date), $0 >> log$i.txt
        done
elif [ $option == "--help" ] || [ $option == "-h" ]
then
        echo "--date or -d - wyswietla aktualna date"
        echo "--logs x or -l x - tworzy x plikow log, podstawowa wartos - 100"
        echo "--help or -h - wyswietla wszystkie komendy"
fi
