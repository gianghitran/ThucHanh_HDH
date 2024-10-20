#!/bin/bash

read -p "Nhap tuoi nguoi dung: " tuoi

#Nhap tuoi can chuyen doi
tuoi=$(echo "$tuoi" | tr -cd '[:digit:]-')

#Tuoi hop le nam trong khoang [0,100]
if [ "$tuoi" -gt 100 ]; then echo "Tuoi khong hop le!"
elif [ "$tuoi" -lt 0 ]; then echo "Tuoi khong hop le!"
elif [ "$tuoi" -gt 18 ]; then
    echo "Ban la nguoi lon"
elif [ "$tuoi" -ge 12 ]; then
    echo "Ban la mot thieu nien"
else
    echo "Ban la mot dua tre"
fi
exit 0
