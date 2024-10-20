#!/bin/sh
# Duong dan den thu muc da clone
thumuc="OS_LAB2_IMG"

# Kiem tra xem thu muc da clone co ton tai khong
if [ ! -d "$thumuc" ]; then
    echo "Thu muc hinh anh khong ton tai."
    exit 1
fi

# Kiem tra thu muc PNG va JPG
if [ ! -d "PNG" ]; then
    mkdir "PNG"
    echo "Da tao thu muc PNG."
fi

if [ ! -d "JPG" ]; then
    mkdir "JPG"
    echo "Da tao thu muc JPG."
fi

# Di chuyen cac tep PNG va dem so luong
so_luong_png=$(find "$thumuc" -type f -iname "*.png" | wc -l)
find "$thumuc" -type f -iname "*.png" -exec mv {} PNG/ \;
echo "So luong hinh anh PNG: $so_luong_png"
echo "Da chuyen anh png vao thu muc PNG"

# Di chuyen cac tep JPG va dem so luong
so_luong_jpg=$(find "$thumuc" -type f -iname "*.jpg" -o -iname "*.jpeg" | wc -l)
find "$thumuc" -type f -iname "*.jpg"  -exec mv {} JPG/ \;
find "$thumuc" -type f -iname "*.jpeg" -exec mv {} JPG/ \;
echo "So luong hinh anh JPG: $so_luong_jpg"
echo "Da chuyen anh jpg vao thu muc JPG"

exit 0
