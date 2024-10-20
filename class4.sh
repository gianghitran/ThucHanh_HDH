#!/bin/bash

#Nhap diem can chuyen doi
Grade=$(echo "$1" | tr -cd '[:digit:]-')

#Diem hop le nam trong khoang [0,1000]
if [ "$Grade" -gt 1000 ]; then echo "Diem khong hop le!"
elif [ "$Grade" -lt 0 ]; then echo "Diem khong hop le!"
elif [ "$Grade" -ge 900 ]; then
    echo "Diem chu : A+"
elif [ "$Grade" -ge 800 ]; then
    echo "Diem chu: A"
elif [ "$Grade" -ge 700 ]; then
    echo "Diem chu: B+"
elif [ "$Grade" -ge 600 ]; then
    echo "Diem chu: B"
elif [ "$Grade" -ge 500 ]; then
    echo "Diem chu: C"
else
    echo "Diem chu: D/F"
fi
exit 0
