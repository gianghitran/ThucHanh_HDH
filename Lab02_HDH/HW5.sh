#!/bin/bash

# Kiem tra da nhap ID khi chay file chua
if [ $# -ne 1 ]; then
    echo "Chua nhap [ID sinh vien]"
    exit 1
fi

# Lay ID nguoi dung nhap
student_id=$1

# Doc file csv theo IFS 
found=0
while IFS=';' read -r id name grade; do
    if [ "$id" == "$student_id" ]; then
        ((found++))
        echo "THONG TIN SINH VIEN CO ID $student_id" 
        echo "Student_ID: $id"
        echo "Name: $name"
        Grade=$(echo "$grade" | tr -cd '[:digit:]-')
        echo "Grade: $grade"
        
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
        
    fi
done < gradebook.csv

#Khong tim thay SV
if [ "$found" == 0 ]; then
echo "Khong co sinh vien voi ID: $student_id"
exit 1
fi
exit 0
