#!/bin/bash

for day in {1..25}
do
    suffix="th"
    if [[ $day == 1 || $day == 21 || $day == 31 ]]; then
        suffix="st"
    elif [[ $day == 2 || $day == 22 ]]; then
        suffix="nd"
    elif [[ $day == 3 || $day == 23 ]]; then
        suffix="rd"
    fi
    touch "day_${day}${suffix}.txt"

    git add *
    git commit --date "Feb ${day}${suffix}, 2024" -m "create my daily diary $i"
done
