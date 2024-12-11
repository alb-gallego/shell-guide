# 3.3 - Operadores numéricos
echo "\n3.3 Operadores numéricos\n"
# -eq (igual a)
# -ne (no igual a)
# -gt (mayor que)
# -lt (menor que)
# -ge (mayor o igual)
# -le (menor o igual)

if [ 10 -eq 10 ]; then
    echo "1 - El número es igual que 10\n"
fi
# =======================
if [ 9 -gt 10 ]; then
    echo "2_1 - El número es igual que 10\n"
else
    echo "2_2 - El número NO es igual que 10\n"
fi
# =======================
if [ 12 -gt 10 ]; then
    echo "3 - El número es mayor que 10\n"
fi
# =======================
if [ -1 -lt 10 ]; then
    echo "4 - El número es menor que 10\n"
fi
# =======================
if [ 10 -ge 10 ]; then
    echo "5_1 -  El número es mayor o igual que 10\n"
fi
# =======================
if [ 12 -ge 10 ]; then
    echo "5_2 -  El número es mayor o igual que 10\n"
fi
# =======================
if [ 9 -le 10 ]; then
    echo "6_1 -  El número es menor o igual que 10\n"
fi
# =======================
if [ 10 -le 10 ]; then
    echo "7_2 -  El número es menor o igual que 10\n"
fi
# =======================
if [ true ]; then
    echo "8_1 -  La condicion es true\n"
fi
# =======================
if ! [ true ]; then
    echo "8_2 -  La condicion es true\n"
else
    echo "8_2 - La condicion es false\n"
fi
# =======================
