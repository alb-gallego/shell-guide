#!/bin/bash

# 3.4 - Operadores Lógicos
echo -e "\n3.4 Operadores Lógicos\n"

# Operador AND
# && -> [] && []
# -a -> [ cond1 -a cond2]
echo -e "\nAND (&& o -a)\n"

a=5
b=10
if [ $a -ne 5 ] && [ $b -eq 10 ]; then
    echo -e "1 - Ambas condiciones son verdaderas\n"
fi
echo -e "\n!IMPORTANTE: Nota: && solo funciona dentro de [[ ... ]]. En [ ... ], usa -a:\n"
if [ $a -ne 5 -a $b -eq 10 ]; then
    echo -e "2 - Ambas condiciones son verdaderas\n"
fi
if [ $a -eq 5 && $b -eq 10 ]; then
    echo -e "3 - Fallo\n"
fi

# Operador AND
# || -> [] || []
# -o -> [ cond1 -o cond2]
echo -e "\nOR (|| o -o)\n"
if [ $a -eq 5 ] || [ $b -eq 10 ]; then
    echo -e "4 - Una condicion es verdadera\n"
fi
echo -e "\n!IMPORTANTE: Nota: || solo funciona dentro de [[ ... ]]. En [ ... ], usa -o:\n"
if [ $a -eq 5 -o $b -eq 10 ]; then
    echo -e "5 - Una condicion es verdadera\n"
fi

if [ $a -eq 5 && $b -eq 10 ]; then
    echo -e "6 - Fallo\n"
fi

# Operador NOT
# ! -> ! []
echo -e "\nNOT (! [condición_a_evaluar])\n"

if ! [ $a -eq 5 ]; then
    echo -e "7 - La condición es true\n"
else
    echo -e "8 - La condición es false\n"
fi
