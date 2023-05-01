#!/bin/bash

for day in {1..5}
do
    suffix="th"
    if [[ $day == 1 || $day == 21 || $day == 31 ]]; then
        suffix="st"
    elif [[ $day == 2 || $day == 22 ]]; then
        suffix="nd"
    elif [[ $day == 3 || $day == 23 ]]; then
        suffix="rd"
    fi
    echo ${day}${suffix}  today > "day_${day}${suffix}.txt"

   #git rm "day_${day}${suffix}.txt"
    git add *
    git commit --date "May ${day}${suffix}, 2023" -m "create my daily diary ${day}${suffix}"
done
