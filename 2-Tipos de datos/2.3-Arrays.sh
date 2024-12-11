# 2.3 Arrays
echo "\n2.3 Arrays\n"

# 1. Creación de un Array

# En zsh, puedes crear un array de manera sencilla utilizando paréntesis ().

# Sintaxis básica:

array=(valor1 valor2 valor3)

# Ejemplo:

frutas=("manzana" "banana" "pera")

# Este array tiene 3 elementos: "manzana", "banana", y "pera".

# 2. Acceso a los Elementos de un Array

# Para acceder a los elementos de un array, usas la sintaxis ${array[indice]}, donde indice es la posición del elemento (comenzando desde 0).

# Ejemplo:

frutas=("manzana" "banana" "pera")
echo ${frutas[0]} # Imprime "manzana"
echo ${frutas[1]} # Imprime "banana"
echo ${frutas[2]} # Imprime "pera"

# 3. Obtener el Tamaño de un Array

# Para obtener la cantidad de elementos que tiene un array, puedes usar la expresión ${#array[@]}.

# Ejemplo:

frutas=("manzana" "banana" "pera")
echo "El número de frutas es: ${#frutas[@]}" # Imprime 3

# 4. Iterar sobre un Array

# Para iterar sobre los elementos de un array en un bucle, puedes usar un bucle for.

# Ejemplo 1: Iterar sobre un array utilizando for

frutas=("manzana" "banana" "pera")
for fruta in "${frutas[@]}"; do
    echo "Fruta: $fruta"
done

# Salida esperada:

# Fruta: manzana
# Fruta: banana
# Fruta: pera

# Ejemplo 2: Iterar usando índices

frutas=("manzana" "banana" "pera")
for i in {1..3}; do
    echo "Fruta $i: ${frutas[$i - 1]}"
done

# Salida esperada:

# Fruta 1: manzana
# Fruta 2: banana
# Fruta 3: pera

# 5. Modificar Elementos de un Array

# Puedes modificar los elementos de un array asignando un nuevo valor a una posición específica.

# Ejemplo:

frutas=("manzana" "banana" "pera")
frutas[1]="naranja" # Cambia "banana" por "naranja"
echo ${frutas[1]}   # Imprime "naranja"

# 6. Agregar Elementos a un Array

# Para agregar elementos al final de un array, puedes usar la sintaxis array+=(nuevo_elemento).

# Ejemplo:

frutas=("manzana" "banana" "pera")
frutas+=("kiwi")  # Agrega "kiwi" al final
echo ${frutas[@]} # Imprime "manzana banana pera kiwi"

# 7. Eliminar Elementos de un Array

# Puedes eliminar un elemento de un array usando la sintaxis unset array[indice].

# Ejemplo:

frutas=("manzana" "banana" "pera")
unset frutas[1]   # Elimina "banana"
echo ${frutas[@]} # Imprime "manzana pera"

# Ten en cuenta que, al eliminar un elemento, el array tendrá un “hueco” en esa posición, y los índices pueden no ser consecutivos.

# 8. Arrays Asociativos (Diccionarios)

# En zsh, también puedes usar arrays asociativos, que son como diccionarios en otros lenguajes. Cada elemento del array tiene una clave en lugar de un índice numérico.

# Sintaxis básica para arrays asociativos:

declare -A array_asociativo
array_asociativo["clave1"]="valor1"
array_asociativo["clave2"]="valor2"

Ejemplo:

declare -A persona
persona["nombre"]="Juan"
persona["edad"]=25
persona["ciudad"]="Sevilla"

echo "Nombre: ${persona[nombre]}" # Imprime "Juan"
echo "Edad: ${persona[edad]}"     # Imprime 25

# 9. Obtener todas las Claves y Valores de un Array Asociativo

# Para obtener todas las claves o todos los valores de un array asociativo, puedes usar ${!array[@]} para las claves y ${array[@]} para los valores.

# Ejemplo:

declare -A persona
persona["nombre"]="Juan"
persona["edad"]=25
persona["ciudad"]="Sevilla"

echo "Claves: ${!persona[@]}" # Imprime "nombre edad ciudad"
echo "Valores: ${persona[@]}" # Imprime "Juan 25 Sevilla"

# 10. Arrays Multidimensionales Simulados

# Aunque zsh y bash no soportan directamente arrays multidimensionales, puedes simular este comportamiento utilizando arrays de arrays. Una forma común es almacenar listas dentro de arrays asociativos.

# Ejemplo:

declare -A matriz
matriz["fila1"]="1 2 3"
matriz["fila2"]="4 5 6"
matriz["fila3"]="7 8 9"

# Imprime 1 2 3
echo "Elemento [1][1]: ${matriz[fila1]}"

# Para acceder a elementos específicos dentro de la fila, necesitarás usar el comando set para dividir los valores dentro de la “fila”.

# 11. Comprobación de Existencia de un Elemento en un Array

# Puedes comprobar si un índice o una clave existe en un array utilizando una sentencia if.

# Ejemplo:

frutas=("manzana" "banana" "pera")
if [[ " ${frutas[@]} " =~ " banana " ]]; then
    echo "Banana está en el array."
else
    echo "Banana no está en el array."
fi

# Resumen de Operaciones Básicas con Arrays en Zsh

# 	•	Crear un array: array=(elemento1 elemento2 elemento3)
# 	•	Acceder a elementos: ${array[indice]}
# 	•	Obtener el tamaño del array: ${#array[@]}
# 	•	Iterar sobre el array: for i in "${array[@]}"; do ...
# 	•	Modificar elementos: array[indice]="nuevo_valor"
# 	•	Agregar elementos: array+=("nuevo_elemento")
# 	•	Eliminar elementos: unset array[indice]
# 	•	Arrays asociativos: declare -A array_asociativo; array_asociativo["clave"]="valor"
# 	•	Comprobar si un valor está en el array: [[ " ${array[@]} " =~ "valor" ]]
