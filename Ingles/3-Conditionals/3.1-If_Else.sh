#!/bin/bash

# 3.1 - If/Else
echo -e "\n3.1 If/Else\n"

numero=6
# La condicion debe ir entre corchetes
# Para usar expresiones más avanzadas, puedes usar [[ condición ]], que es más potente y flexible.
# A la izquierda se pone el valor "principal" que se quiere compara. Ej:"$numero"
# En el centro el operador que se desea usar. Ej:"gt"
# A la derecha el otro valor que se quiere comparar. Ej:"10"
# Tras el parentesis siempre ";" y un then para indicar el comienzo del condicional
# !IMPORTANTE: añadir cierre "fi" al final del condicional

if [ $numero -gt 10 ]; then
    echo -e "El número es mayor que 10"
else
    echo -e "El número es menor o igual a 10"
fi
