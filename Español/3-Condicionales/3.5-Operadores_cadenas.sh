#!/bin/bash

# 3.5 - Operadores de cadenas
echo -e "\n3.5 Operadores de cadenas\n"

# "=" igual a
# "!=" NO es igual a
# "-z" logitud 0
# "-n" logitud DISTINTA a 0

cadena="Prueba"

# Operador "="
echo -e "\nIgual a (cadena_a_evaluar1 = cadena_a_evaluar2)"

if [ $cadena = "Prueba" ]; then
    echo -e "1 - La cadena coincide\n"
fi

# Operador "!="
echo -e "\nDiferente a (cadena_a_evaluar1 != cadena_a_evaluar)"

if [ $cadena != "Prueba1" ]; then
    echo -e "2 - La cadena NO coincide\n"
fi

# Operador "-z"
echo -e "\nLongitud de cadena 0 (-z cadena_a_evaluar)"
cadena=""
if [ -z $cadena ]; then
    echo -e "3 - La cadena tiene longitud 0\n"
fi

# Operador "-n"
echo -e "\nLongitud de cadena mayor a 0 (-n cadena_a_evaluar)"
cadena="Prueba"
if [ -n $cadena ]; then
    echo -e "4 - La cadena NO tiene longitud 0\n"
fi
