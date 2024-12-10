# 2.4 - Operadores Lógicos
echo "\nOperadores Lógicos\n"

# Operador AND
# && -> [] && []
# -a -> [ cond1 -a cond2]
echo "\nAND (&& o -a)\n"

a=5
b=10
if [ $a -ne 5 ] && [ $b -eq 10 ]; then
    echo "1 - Ambas condiciones son verdaderas\n"
fi
echo "\n!IMPORTANTE: Nota: && solo funciona dentro de [[ ... ]]. En [ ... ], usa -a:\n"
if [ $a -ne 5 -a $b -eq 10 ]; then
    echo "2 - Ambas condiciones son verdaderas\n"
fi
if [ $a -eq 5 && $b -eq 10 ]; then
    echo "3 - Fallo\n"
fi

# Operador AND
# || -> [] || []
# -o -> [ cond1 -o cond2]
echo "\nOR (|| o -o)\n"
if [ $a -eq 5 ] || [ $b -eq 10 ]; then
    echo "4 - Una condicion es verdadera\n"
fi
echo "\n!IMPORTANTE: Nota: || solo funciona dentro de [[ ... ]]. En [ ... ], usa -o:\n"
if [ $a -eq 5 -o $b -eq 10 ]; then
    echo "5 - Una condicion es verdadera\n"
fi

if [ $a -eq 5 && $b -eq 10 ]; then
    echo "6 - Fallo\n"
fi

# Operador NOT
# ! -> ! []
echo "\nNOT (! [condición_a_evaluar])\n"

if ! [ $a -eq 5 ]; then
    echo "7 - La condición es true\n"
else
    echo "8 - La condición es false\n"
fi
