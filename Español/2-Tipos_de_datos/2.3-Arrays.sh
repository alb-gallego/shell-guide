#!/bin/bash

# 2.3-Arrays
echo -e "\n2.3-Arrays\n"

# 1. Creación de un Array

# En Bash, puedes crear un array de manera sencilla utilizando paréntesis ().

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
echo -e "El número de frutas es: ${#frutas[@]}" # Imprime 3

# 4. Iterar sobre un Array

# Para iterar sobre los elementos de un array en un bucle, puedes usar un bucle for.

# Ejemplo 1: Iterar sobre un array utilizando for

frutas=("manzana" "banana" "pera")
for fruta in "${frutas[@]}"; do
    echo -e "Fruta: $fruta"
done

# Salida esperada:

# Fruta: manzana
# Fruta: banana
# Fruta: pera

# Ejemplo 2: Iterar usando índices

frutas=("manzana" "banana" "pera")
for ((i = 0; i < ${#frutas[@]}; i++)); do
    echo -e "Fruta $((i + 1)): ${frutas[$i]}"
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

# 8. Comprobación de Existencia de un Elemento en un Array

# Puedes comprobar si un índice o una clave existe en un array utilizando una sentencia if.

# Ejemplo:

frutas=("manzana" "banana" "pera")
if [[ " ${frutas[@]} " =~ " banana " ]]; then
    echo -e "Banana está en el array."
else
    echo -e "Banana no está en el array."
fi

# Resumen de Operaciones Básicas con Arrays en Bash

# 	•	Crear un array: array=(elemento1 elemento2 elemento3)
# 	•	Acceder a elementos: ${array[indice]}
# 	•	Obtener el tamaño del array: ${#array[@]}
# 	•	Iterar sobre el array: for i in "${array[@]}"; do ...
# 	•	Modificar elementos: array[indice]="nuevo_valor"
# 	•	Agregar elementos: array+=("nuevo_elemento")
# 	•	Eliminar elementos: unset array[indice]
# 	•	Arrays asociativos: declare -A array_asociativo; array_asociativo["clave"]="valor"
# 	•	Comprobar si un valor está en el array: [[ " ${array[@]} " =~ "valor" ]]
