#!/bin/bash

# 3.3 - Operadores numéricos
echo -e "\n3.3 Operadores numéricos\n"
# -eq (igual a)
# -ne (no igual a)
# -gt (mayor que)
# -lt (menor que)
# -ge (mayor o igual)
# -le (menor o igual)

if [ 10 -eq 10 ]; then
    echo -e "1 - El número es igual que 10\n"
fi
# =======================
if [ 9 -gt 10 ]; then
    echo -e "2_1 - El número es igual que 10\n"
else
    echo -e "2_2 - El número NO es igual que 10\n"
fi
# =======================
if [ 12 -gt 10 ]; then
    echo -e "3 - El número es mayor que 10\n"
fi
# =======================
if [ -1 -lt 10 ]; then
    echo -e "4 - El número es menor que 10\n"
fi
# =======================
if [ 10 -ge 10 ]; then
    echo -e "5_1 -  El número es mayor o igual que 10\n"
fi
# =======================
if [ 12 -ge 10 ]; then
    echo -e "5_2 -  El número es mayor o igual que 10\n"
fi
# =======================
if [ 9 -le 10 ]; then
    echo -e "6_1 -  El número es menor o igual que 10\n"
fi
# =======================
if [ 10 -le 10 ]; then
    echo -e "7_2 -  El número es menor o igual que 10\n"
fi
# =======================
if [ true ]; then
    echo -e "8_1 -  La condicion es true\n"
fi
# =======================
if ! [ true ]; then
    echo -e "8_2 -  La condicion es true\n"
else
    echo -e "8_2 - La condicion es false\n"
fi
# =======================
