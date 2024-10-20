#!/bin/sh

id="Nghi"
mssv="23521005"
echo "Nhap ten: "
read ten
echo "Nhap ma: "
read ma
while [ "$ten" != "$id" ] || [ "$ma" != "$mssv" ];
do
    echo "Nhap lai: "
    echo "Nhap ten: "
    read ten
    echo "Nhap ma: "
    read ma
done
    echo "Chao buoi sang, Nghi!"
    exit 0 
fi
