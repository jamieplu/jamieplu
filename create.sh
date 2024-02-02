#!/bin/bash

for i in {4..8}
do
    touch "as-is-blog_$i.md"
    git add *
    git commit --date "Feb 2$ist, 2024" -m "bugfixes $i"
done
