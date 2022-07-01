#!/bin/bash
option=$1
if [ $option == "--date" ]
then
        echo $(date)
elif [ $option == "--logs" ]
then
        for (( i = 1; i<=100; i++ ))
        do
                echo log$i, $(date), $0 >> log$i.txt
        done
fi
