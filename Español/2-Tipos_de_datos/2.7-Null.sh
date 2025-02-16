#!/bin/bash

# 2.7  Null o vacío
echo "\n2.7 Null value\n"

# Bash utiliza cadenas vacías("") o variables no definidas(var) para representar un valor nulo o vacío.

echo "EJEMPLOS:\n"
echo "Comprobar si una variable está vacía:"

var=""

if [ -z "$var" ]; then
    echo "La variable está vacía"
fi
