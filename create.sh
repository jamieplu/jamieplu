#!/bin/bash

year=2023

for i in {1..31}
do
    # Generate a random day between 1 and 366 (accounting for leap years)
    random_day=$(( ( RANDOM % 366 )  + 1 ))

    # Convert the random day number to a date (adjusted format)
    date_str=$(date -j -v +$((random_day - 1))d +'%Y-%m-%d')

    # Extract day number from the date
    day=$(date -j -f '%Y-%m-%d' "$date_str" +'%d')

    suffix="th"
    if [[ $day == 1 || $day == 21 || $day == 31 ]]; then
        suffix="st"
    elif [[ $day == 2 || $day == 22 ]]; then
        suffix="nd"
    elif [[ $day == 3 || $day == 23 ]]; then
        suffix="rd"
    fi
    touch "day_${day}${suffix}.txt"

   #git rm "day_${day}${suffix}.txt"
    git add *
    git commit --date "Apr ${day}${suffix}, 2023" -m "create my daily diary ${day}${suffix}"
done
