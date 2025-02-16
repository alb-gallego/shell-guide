#!/bin/bash

# 2.7  Null o vacío
echo -e "\n2.7 Null value\n"

# Bash utiliza cadenas vacías("") o variables no definidas(var) para representar un valor nulo o vacío.

echo -e "EJEMPLOS:\n"
echo -e "Comprobar si una variable está vacía:"

var=""

if [ -z "$var" ]; then
    echo -e "La variable está vacía"
fi
