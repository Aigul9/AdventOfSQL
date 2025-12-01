#!/bin/bash

read -p "year: " year

for day in $(seq -w 01 24); do
    dir="year${year}/day${day}"
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
    fi
#    touch "$dir/test_data.sql"
    touch "$dir/solution.sql"
    touch "$dir/task.md"
done

echo "done"
