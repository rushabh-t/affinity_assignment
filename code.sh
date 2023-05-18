#!/bin/bash

curl -s "https://www.amfiindia.com/spages/NAVAll.txt" -o data.txt

awk -F";" '/;/ {print $4 "," $5}' data.txt > data.csv

echo "data.csv file is saved in $(pwd)"