#!/bin/sh
id="Tran Gia Nghi"
mssv="23521005"
echo "Nhap ten: "
read ten
echo "Nhap ma: "
read ma
if [ "$ten" = "$id" ] && [ "$ma" = "$mssv" ]; then
    echo "Chao buoi sang, $ten!"
    exit 0
else 
    echo "Permission denied"
    exit 1
fi
