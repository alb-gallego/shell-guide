# 4.1 Bucle For
echo "\n4.1 Bucles For\n"

# La sintaxis basica de un bucle for es de la siguiente forma:

# for variable in lista; do
# >Comandos a ejecutar
# done

frutas=("manzana" "pera" "plátano")

# Iteracion sobre una lista de elementos
# OPCION 1
echo "Iterar lista de elementos OPCION 1"
for fruta in "${frutas[@]}"; do
    echo "Fruta: $fruta"
done

# Iteracion sobre una lista de elementos
# OPCION 2
echo "Iterar lista de elementos OPCION 2"
for fruta in fruta_1 fruta_2 fruta_3; do
    echo "Fruta: $fruta"
done

# Iteracion sobre un rango de números
echo "Rango de numeros"
for i in {1..5}; do
    echo "Número: $i"
done

# Iteracion sobre un rango de números siguiendo una secuencia
# OPCION 1
echo "Rango de numeros siguiendo una secuencia OPCION 1"
for i in $(seq 1 2 10); do
    echo "Número: $i"
done

# OPCION 2
echo "Rango de numeros siguiendo una secuencia OPCION 2"
for ((i = 1; i <= 10; i += 2)); do
    echo "Número: $i"
done

echo "NOTA: SOLO PARA !BASH\n
Iteracion sobre un rango de números especificando el numero de pasos\n
for i in {1..10..2}; do\n
    echo "Número: \$i"\n
done\n"

echo "Rango de numeros siguiendo una secuencia OPCION 3(HACK)"
for i in {1..10}; do
    if ((i % 2 == 1)); then
        echo "Número: $i"
    fi
done

echo "\nRango de numeros siguiendo una secuencia OPCION 4(Usando comando 'eval')"
eval "for i in {1..10..2}; do echo Número: \$i; done"

# Bucles anidados
echo "\nBucles anidados\n"

# Se pueden anidar bucles for para estructuras mas complejas

# EJEMPLO
for i in {1..3}; do
    for j in {1..3}; do
        echo "$i x $j = $((i * j))"
    done
done

#Control de bucles
echo "\nControl de bucles\n"

# BREAK
echo "\nComando 'break' para interrumpir el bucle y salir de el\n"

for i in {1..10}; do
    if [ $i -eq 5 ]; then
        echo "Rompiendo el bucle"
        break
    fi
    echo "Número: $i"
done

# CONTINUE
echo "\nComando 'continue' para pasar a la siguiente iteración sin ejecutar el resto del código en el bucle\n"

for i in {1..5}; do
    if [ $i -eq 3 ]; then
        echo "Saltando el número $i"
        continue
    fi
    # Sin la linea 'continue' esta linea imprimiria 'Número 3'
    echo "Número: $i"
done

#  EJEMPLOS PRÁCTICOS
echo "\nEJEMPLOS PRÁCTICOS\n"

echo "Iterar sobre los archivos de un directorio\n"
for archivo in $(ls ./Bucles/*.sh); do
    echo "Archivo encontrado: $archivo"
done

echo "\nIterar sobre procesos en ejecución\n"
for proceso in $(ps -e | awk '{print $1}'); do
    echo "PID: $proceso\n"
    break
done
