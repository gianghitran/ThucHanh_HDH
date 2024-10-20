#!/bin/sh

#Tap tep danh sach mon hoc
echo "HDH001" > subject.txt
echo "HDH002" >> subject.txt
echo "HDH003" >> subject.txt
echo "HDH004" >> subject.txt
echo "HDH005" >> subject.txt

# Nhap ho ten
read -p "Nhap ho va ten sinh vien: " ten

# Thay khoang trang = "_"
ten_thu_muc=$(echo "$ten" | tr ' ' '_')

mkdir "$ten_thu_muc"
echo "Tao thanh cong thu muc: $ten_thu_muc"

while IFS= read -r mon; do
    mkdir "$ten_thu_muc/$mon"
    echo "Tao thanh cong thu muc: $mon"
done < subject.txt

exit 0
