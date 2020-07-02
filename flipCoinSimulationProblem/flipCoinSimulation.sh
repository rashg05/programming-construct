#!/bin/bash -x

headCount=0
tailCount=0

while [ true ]
do
        var=$(( RANDOM%2 ))
        if [[ $var -eq 1 ]]
        then
                ((headCount++))
                if [[ $headCount -eq 21 ]]
                then
                        echo "Head win the first"
                        break
                fi
        else
                ((tailCount++))
                if [[ $tailCount -eq 21 ]]
                then
                        echo "tail win the first"
                        break
                fi
        fi
done

echo "Head Count is $headCount"
echo "tail Count is $tailCount"

difference=$(( $headCount - $tailCount ))
echo "difference between 2 points is = $difference"

