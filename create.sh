#!/bin/bash

for i in {4..10}
do
    touch "as-is-blog_$i.md"
    git add *
    git commit --date "Jun 2$st, 2024" -m "bugfixes $i"
done
