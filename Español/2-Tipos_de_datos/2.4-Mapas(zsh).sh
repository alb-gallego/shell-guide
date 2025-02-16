#!/bin/zsh

# 2.4 Mapas
echo -e "2.4 Mapas\n"

#  En zsh los mapas (también llamados arrays asociativos) son una estructura de datos que te permite asociar claves a valores

# 1. Creación de un Map (Array Asociativo)

# En zsh, para declarar un map (también llamado array asociativo), se utiliza el comando typeset -A. Esto permite asociar una clave a un valor, en lugar de usar índices numéricos.

# Sintaxis básica:

typeset -A map
map[clave1]="valor1"
map[clave2]="valor2"

# Ejemplo de Creación de un Map:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"

# Este map tiene tres claves: "nombre", "edad", "ciudad", y sus respectivos valores: "Juan", 25, "Sevilla".

# 2. Acceso a los Valores de un Map

# Para acceder a los valores de un map o array asociativo, se usa la sintaxis ${map[clave]}, donde clave es la clave asociada al valor que deseas obtener.

# Ejemplo:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25

echo "Nombre: ${persona[nombre]}" # Imprime "Juan"
echo "Edad: ${persona[edad]}"     # Imprime 25

# 3. Modificación de los Valores en un Map

# Puedes modificar los valores en un map asignando un nuevo valor a una clave específica.

# Ejemplo:

persona[edad]=26
echo "Edad actualizada: ${persona[edad]}" # Imprime 26

# 4. Comprobación de la Existencia de una Clave en un Map

# Para comprobar si una clave existe en un map, puedes usar una estructura if junto con [[ -v ]] (que verifica si una variable o clave está definida en un map).

# Ejemplo:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25

if [[ -v persona[nombre] ]]; then
    echo "La clave 'nombre' existe en el map."
else
    echo "La clave 'nombre' no existe en el map."
fi

# 5. Obtener Todas las Claves y Valores de un Map

# Puedes obtener todas las claves de un map usando ${(v)map} y todos los valores usando ${(k)map}.

# Ejemplo:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"


echo "Claves: ${(k)persona}" # Claves: clave1 clave2
echo "Valores: ${(v)persona}" # Valores: valor1 valor2


# 6. Iterar sobre un Map (Array Asociativo)

# Para iterar sobre un map en zsh, puedes usar un bucle for. Es importante recordar que al trabajar con maps, necesitas iterar tanto sobre las claves como sobre los valores. A continuación te doy ejemplos detallados.

# 6.1 Iterar Solo sobre las Claves

# Para obtener solo las claves del map, puedes usar ${(v)map} en un bucle for.

# Ejemplo:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"

for clave in "${(k)persona}"; do
    echo "Clave: $clave"
done

# Salida esperada:

# Clave: nombre
# Clave: edad
# Clave: ciudad

# 6.2 Iterar sobre las Claves y los Valores

# Para iterar sobre las claves y los valores de un map, puedes usar el siguiente formato:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"

for clave in "${(k)persona}"; do
    echo "Clave: $clave, Valor: ${persona[$clave]}"
done

# Salida esperada:

# Clave: nombre, Valor: Juan
# Clave: edad, Valor: 25
# Clave: ciudad, Valor: Sevilla

# 7. Eliminar Elementos de un Map

# Puedes eliminar una clave de un map utilizando unset.

# Ejemplo:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"

unset "persona[edad]" # Elimina la clave "edad"
echo "Claves después de eliminar 'edad': ${(k)persona}" # Imprime "nombre ciudad"

# 8. Verificar si un Valor Existe en un Map

# Puedes verificar si un valor específico existe en un map mediante un bucle for o utilizando [[ "${(k)map}" =~ "$valor" ]].

# Ejemplo con Bucle for:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"

valor_a_buscar="Juan"
found=false

for valor in "${(k)persona}"; do
    if [[ "$valor" == "$valor_a_buscar" ]]; then
        found=true
        break
    fi
done

if $found; then
    echo "El valor '$valor_a_buscar' existe en el map."
else
    echo "El valor '$valor_a_buscar' no existe en el map."
fi

# Ejemplo con [[ =~ ]]:

typeset -A persona
persona[nombre]="Juan"
persona[edad]=25
persona[ciudad]="Sevilla"

valor_a_buscar="Sevilla"

if [[ "${(k)persona}" =~ "$valor_a_buscar" ]]; then
    echo "El valor '$valor_a_buscar' existe en el map."
else
    echo "El valor '$valor_a_buscar' no existe en el map."
fi

# 9. Arrays Multidimensionales con Maps

# Aunque zsh no soporta arrays multidimensionales de forma directa, puedes simular un array multidimensional creando un map cuyo valor sea otro map o un array.

# Ejemplo de Arrays Multidimensionales:

typeset -A estudiantes

# Definimos un array asociativo como valor
estudiantes[Juan]="Maths, Science"
estudiantes[Ana]="History, Art"
estudiantes[Carlos]="Physics, Chemistry"

for estudiante in "${(v)estudiantes}"; do
    echo "$estudiante estudia ${estudiantes[$estudiante]}"
done

# Salida esperada:

# Juan estudia Maths, Science
# Ana estudia History, Art
# Carlos estudia Physics, Chemistry

# Resumen: Operaciones Básicas con Maps en Zsh

# •	Declarar un map: typeset -A map; map[clave]="valor"
# •	Acceder a un valor: ${map[clave]}
# •	Modificar un valor: map[clave]="nuevo_valor"
# •	Obtener claves: ${(v)map}
# •	Obtener valores: ${(k)map}
# •	Iterar sobre claves: for clave in "${(v)map}"; do ...
# •	Iterar sobre claves y valores: for clave in "${(v)map}"; do echo "Clave: $clave, Valor: ${map[$clave]}"; done
# •	Eliminar un valor: unset map[clave]
# •	Verificar existencia de clave: [[ -v map[clave] ]]
# •	Verificar existencia de valor: [[ "${(k)map}" =~ "$valor" ]]
