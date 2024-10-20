#!/bin/sh

id="Tran Gia Nghi"
mssv="23521005"

for i in 1 2 3 4 5; do
    read -p  "Nhap ten: " ten
    read -p "Nhap ma so SV: " ma
    
    if [ "$ten" = "$id" ] && [ "$ma" = "$mssv" ]; then
        echo "Chao buoi sang, Nghi!"
        exit 0
    fi
    if [ "$i" -eq 5 ]; then
        echo "Permission denied!"
        exit 1
    fi
    echo "Khong trung khop ten va MSSV, Nhap lai: "
done
