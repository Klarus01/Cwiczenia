#!/bin/bash
option=$1
value=$2
if [ $option == "--date" ]
then
        echo $(date)
elif [ $option == "--logs" ]
then
        if [ -z $value ]
        then
                value=100
        fi
        for (( i = 1; i<=$value; i++ ))
        do
                echo log$i, $(date), $0 >> log$i.txt
        done
fi
