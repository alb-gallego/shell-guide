#!/bin/bash

# 3.2 - Truthy y falsy
echo "\n3.2 Truthy y falsy\n"

# 0=true
# 1=false
[ 0 -eq 1 ]
falsy=$?

if [ $falsy -eq 0 ]; then
    echo "1_1 - La condicion es true\n"
else
    echo "1_2 - La condicion es false\n"
fi

# Toda salida de comando que devuelva 0 es un valore truthy
if ls $HOME >/dev/null; then
    echo "2 -La carpeta existe\n"
fi

if ls /random/route >/dev/null; then
    echo "3 - La carpeta existe\n"
else
    echo "4 - La carpeta NO existe\n"
fi

if echo "Truthy" >/dev/null; then
    echo "5 - Echo es correcto\n"
fi
