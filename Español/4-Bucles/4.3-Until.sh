#!/bin/bash

# 4.3 Bucle Until
echo "\n4.3 Bucles Until\n"

# La sintaxis basica de un bucle until es de la siguiente forma:

# until condición; do
#     > Comandos a ejecutar
# done

# Contador de 1 a 5
echo "\nContar de 1 hasta 5\n"

contador=1
until [ $contador -gt 5 ]; do
    echo "Contador: $contador"
    ((contador++))
done

#Control de bucles
echo "\nControl de bucles\n"

# BREAK
echo "\nComando 'break' para interrumpir el bucle y salir de el\n"

contador=1
until [ $contador -gt 5 ]; do
    echo "Solo se imprime el primer numero: $contador"
    break
    ((contador++))
done

# CONTINUE
echo "\nComando 'continue' para pasar a la siguiente iteración sin ejecutar el resto del código en el bucle\n"

until [ $contador -gt 5 ]; do
    if [ $contador -eq 3 ]; then
        echo "Saltando el número $contador"
        ((contador++))
        continue
    fi
    # Sin la linea 'continue' esta linea imprimiria 'Número 3'
    echo "Número: $contador"
    ((contador++))
done
