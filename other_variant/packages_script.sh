#!/usr/bin/env bash



for i in $(cat dependencies.csv | grep -v "package"); do

    ID=$(echo "$i" | awk -F ',' '{print $1}')
    NAME=$(echo "$i" | awk -F ',' '{print $2}')
    
    printf "INSERT INTO packages VALUES (%s, '%s');\n" "$ID" "$NAME" >> project.sql
done


