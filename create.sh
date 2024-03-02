#!/bin/bash

for i in {4..10}
do
    touch "ferociously-blogging_$i.txt"
    git add *
    git commit --date "Mar 2$st, 2024" -m "bugfixes $i"
done
