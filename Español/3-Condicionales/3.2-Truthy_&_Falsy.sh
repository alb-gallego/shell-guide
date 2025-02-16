#!/bin/bash

# 3.2 - Truthy y falsy
echo -e "\n3.2 Truthy y falsy\n"

# 0=true
# 1=false
[ 0 -eq 1 ]
falsy=$?

if [ $falsy -eq 0 ]; then
    echo -e "1_1 - La condicion es true\n"
else
    echo -e "1_2 - La condicion es false\n"
fi

# Toda salida de comando que devuelva 0 es un valore truthy
if ls $HOME >/dev/null; then
    echo -e "2 -La carpeta existe\n"
fi

if ls /random/route >/dev/null; then
    echo -e "3 - La carpeta existe\n"
else
    echo -e "4 - La carpeta NO existe\n"
fi

if echo -e "Truthy" >/dev/null; then
    echo -e "5 - Echo es correcto\n"
fi
