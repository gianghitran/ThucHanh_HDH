#!/bin/sh

id="Tran Gia Nghi"
mssv="23521005"
read -p  "Nhap ten: " ten
read -p "Nhap ma so SV: " ma
while [ "$ten" != "$id" ] || [ "$ma" != "$mssv" ]; do

    echo "Khong trung khop ten va MSSV, Nhap lai: "
    read -p  "Nhap ten: " ten
    read -p "Nhap ma so SV: " ma
done 
echo "Chao buoi sang, $ten!"
exit 0

