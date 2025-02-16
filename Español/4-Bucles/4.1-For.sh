#!/bin/bash

# 4.1 Bucle For
echo -e "\n4.1 Bucles For\n"

# La sintaxis basica de un bucle for es de la siguiente forma:

# for variable in lista; do
# >Comandos a ejecutar
# done

frutas=("manzana" "pera" "plátano")

# Iteracion sobre una lista de elementos
# OPCION 1
echo -e "Iterar lista de elementos OPCION 1"
for fruta in "${frutas[@]}"; do
    echo -e "Fruta: $fruta"
done

# Iteracion sobre una lista de elementos
# OPCION 2
echo -e "Iterar lista de elementos OPCION 2"
for fruta in fruta_1 fruta_2 fruta_3; do
    echo -e "Fruta: $fruta"
done

# Iteracion sobre un rango de números
echo -e "Rango de numeros"
for i in {1..5}; do
    echo -e "Número: $i"
done

# Iteracion sobre un rango de números siguiendo una secuencia
# OPCION 1
echo -e "Rango de numeros siguiendo una secuencia OPCION 1"
for i in $(seq 1 2 10); do
    echo -e "Número: $i"
done

# OPCION 2
echo -e "Rango de numeros siguiendo una secuencia OPCION 2"
for ((i = 1; i <= 10; i += 2)); do
    echo -e "Número: $i"
done

echo -e "NOTA: SOLO PARA !BASH\n
Iteracion sobre un rango de números especificando el numero de pasos\n
for i in {1..10..2}; do\n
    echo -e "Número: \$i"\n
done\n"

echo -e "Rango de numeros siguiendo una secuencia OPCION 3(HACK)"
for i in {1..10}; do
    if ((i % 2 == 1)); then
        echo -e "Número: $i"
    fi
done

echo -e "\nRango de numeros siguiendo una secuencia OPCION 4(Usando comando 'eval')"
eval "for i in {1..10..2}; do echo Número: \$i; done"

# Bucles anidados
echo -e "\nBucles anidados\n"

# Se pueden anidar bucles for para estructuras mas complejas

# EJEMPLO
for i in {1..3}; do
    for j in {1..3}; do
        echo -e "$i x $j = $((i * j))"
    done
done

#Control de bucles
echo -e "\nControl de bucles\n"

# BREAK
echo -e "\nComando 'break' para interrumpir el bucle y salir de el\n"

for i in {1..10}; do
    if [ $i -eq 5 ]; then
        echo -e "Rompiendo el bucle"
        break
    fi
    echo -e "Número: $i"
done

# CONTINUE
echo -e "\nComando 'continue' para pasar a la siguiente iteración sin ejecutar el resto del código en el bucle\n"

for i in {1..5}; do
    if [ $i -eq 3 ]; then
        echo -e "Saltando el número $i"
        continue
    fi
    # Sin la linea 'continue' esta linea imprimiria 'Número 3'
    echo -e "Número: $i"
done

#  EJEMPLOS PRÁCTICOS
echo -e "\nEJEMPLOS PRÁCTICOS\n"

echo -e "Iterar sobre los archivos de un directorio\n"
for archivo in $(ls ./Bucles/*.sh); do
    echo -e "Archivo encontrado: $archivo"
done

echo -e "\nIterar sobre procesos en ejecución\n"
for proceso in $(ps -e | awk '{print $1}'); do
    echo -e "PID: $proceso\n"
    break
done
