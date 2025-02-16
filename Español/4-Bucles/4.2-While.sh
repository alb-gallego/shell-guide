#!/bin/bash

# Bucle While
echo -e "\n4.2 Bucles While\n"

# La sintaxis basica de un bucle for es de la siguiente forma:

# while condición; do
#     >Comandos a ejecutar
# done

# Contador de 1 a 5
echo -e "\nContar de 1 hasta 5\n"

contador=1
while [ $contador -le 5 ]; do
    echo -e "Contador: $contador"
    ((contador++))
done

# Leer archivo linea a linea
echo -e "\nLeer archivo linea a linea\n"
# INICIALIZACION DE DATOS DE PRUEBA
echo -e "\nLinea 1\nLinea 2\nLinea 3\nLinea 4" >"archivo.txt"

while IFS= read -r linea; do
    if [ -n "$linea" ]; then
        echo -e "Línea: $linea"
    fi
done <archivo.txt

#BORRAR DATOS DE PRUEBA
rm "archivo.txt"

#Control de bucles
echo -e "\nControl de bucles\n"

# BREAK
echo -e "\nComando 'break' para interrumpir el bucle y salir de el\n"

contador=1
while [ $contador -le 5 ]; do
    echo -e "Solo se imprime el primer numero: $contador"
    break
    ((contador++))
done

# CONTINUE
echo -e "\nComando 'continue' para pasar a la siguiente iteración sin ejecutar el resto del código en el bucle\n"

while [ $contador -le 5 ]; do
    if [ $contador -eq 3 ]; then
        echo -e "Saltando el número $contador"
        ((contador++))
        continue
    fi
    # Sin la linea 'continue' esta linea imprimiria 'Número 3'
    echo -e "Número: $contador"
    ((contador++))
done
