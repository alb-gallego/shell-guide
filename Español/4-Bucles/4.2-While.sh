#!/bin/bash

# Bucle While
echo "\n4.2 Bucles While\n"

# La sintaxis basica de un bucle for es de la siguiente forma:

# while condición; do
#     >Comandos a ejecutar
# done

# Contador de 1 a 5
echo "\nContar de 1 hasta 5\n"

contador=1
while [ $contador -le 5 ]; do
    echo "Contador: $contador"
    ((contador++))
done

# Leer archivo linea a linea
echo "\nLeer archivo linea a linea\n"
# INICIALIZACION DE DATOS DE PRUEBA
echo "\nLinea 1\nLinea 2\nLinea 3\nLinea 4" >"archivo.txt"

while IFS= read -r linea; do
    if [ -n "$linea" ]; then
        echo "Línea: $linea"
    fi
done <archivo.txt

#BORRAR DATOS DE PRUEBA
rm "archivo.txt"

#Control de bucles
echo "\nControl de bucles\n"

# BREAK
echo "\nComando 'break' para interrumpir el bucle y salir de el\n"

contador=1
while [ $contador -le 5 ]; do
    echo "Solo se imprime el primer numero: $contador"
    break
    ((contador++))
done

# CONTINUE
echo "\nComando 'continue' para pasar a la siguiente iteración sin ejecutar el resto del código en el bucle\n"

while [ $contador -le 5 ]; do
    if [ $contador -eq 3 ]; then
        echo "Saltando el número $contador"
        ((contador++))
        continue
    fi
    # Sin la linea 'continue' esta linea imprimiria 'Número 3'
    echo "Número: $contador"
    ((contador++))
done
