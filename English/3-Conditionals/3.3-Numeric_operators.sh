#!/bin/bash

# 3.3 - Numeric Operators
echo -e "\n3.3 Numeric Operators\n"
# -eq (equal to)
# -ne (not equal to)
# -gt (greater than)
# -lt (less than)
# -ge (greater than or equal to)
# -le (less than or equal to)

if [ 10 -eq 10 ]; then
    echo -e "1 - The number is equal to 10\n"
fi
# =======================
if [ 9 -gt 10 ]; then
    echo -e "2_1 - The number is equal to 10\n"
else
    echo -e "2_2 - The number is NOT equal to 10\n"
fi
# =======================
if [ 12 -gt 10 ]; then
    echo -e "3 - The number is greater than 10\n"
fi
# =======================
if [ -1 -lt 10 ]; then
    echo -e "4 - The number is less than 10\n"
fi
# =======================
if [ 10 -ge 10 ]; then
    echo -e "5_1 - The number is greater than or equal to 10\n"
fi
# =======================
if [ 12 -ge 10 ]; then
    echo -e "5_2 - The number is greater than or equal to 10\n"
fi
# =======================
if [ 9 -le 10 ]; then
    echo -e "6_1 - The number is less than or equal to 10\n"
fi
# =======================
if [ 10 -le 10 ]; then
    echo -e "7_2 - The number is less than or equal to 10\n"
fi
# =======================
if [ true ]; then
    echo -e "8_1 - The condition is true\n"
fi
# =======================
if ! [ true ]; then
    echo -e "8_2 - The condition is true\n"
else
    echo -e "8_2 - The condition is false\n"
fi
# =======================
