#!/bin/sh
str=$1
thumuc=$2
#Kiem tra thu muc co ton tai
if [ ! -d "$thumuc" ]; then
    echo "Khong ton tai thu muc: $thumuc"
    exit 1
fi
# Duyet qua cac file txt va các thu muc con
for file in $(find "$thumuc" -type f); do
     # Tim va xu ly ket qua
    grep -Hn "$str" "$file" | while IFS= read -r line; do
        echo "File: $file, Line: $line"
    done
done
exit 0
