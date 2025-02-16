#!/bin/bash

# 4.3 Bucle Until
echo -e "\n4.3 Bucles Until\n"

# La sintaxis basica de un bucle until es de la siguiente forma:

# until condición; do
#     > Comandos a ejecutar
# done

# Contador de 1 a 5
echo -e "\nContar de 1 hasta 5\n"

contador=1
until [ $contador -gt 5 ]; do
    echo -e "Contador: $contador"
    ((contador++))
done

#Control de bucles
echo -e "\nControl de bucles\n"

# BREAK
echo -e "\nComando 'break' para interrumpir el bucle y salir de el\n"

contador=1
until [ $contador -gt 5 ]; do
    echo -e "Solo se imprime el primer numero: $contador"
    break
    ((contador++))
done

# CONTINUE
echo -e "\nComando 'continue' para pasar a la siguiente iteración sin ejecutar el resto del código en el bucle\n"

until [ $contador -gt 5 ]; do
    if [ $contador -eq 3 ]; then
        echo -e "Saltando el número $contador"
        ((contador++))
        continue
    fi
    # Sin la linea 'continue' esta linea imprimiria 'Número 3'
    echo -e "Número: $contador"
    ((contador++))
done
