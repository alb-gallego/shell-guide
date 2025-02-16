#!/bin/bash
echo "Shell en uso: $SHELL"

# 2.1-Cadenas
echo -e "\n2.1-Cadenas"

# 1.Longitud de una cadena
echo -e "\n1.Longitud de una cadena"

cadena="Hola, mundo"
echo -e "\nLa longitud de la cadena es: ${#cadena}" # Imprime 11

# 2.Subcadenas (slicing)
echo -e "\n2.Subcadenas (slicing)"
# Puedes extraer partes de una cadena con ${cadena:inicio:longitud}:
# 		Inicio: Índice desde donde comenzar (0 es el primero).
# 		Longitud: Opcional, indica cuántos caracteres tomar.
cadena="Hola, mundo"
echo -e "\n${cadena:0:4}" # Imprime "Hola"
echo -e "${cadena:6}"     # Imprime "mundo"

# 3.Sustitución (reemplazar texto)
echo -e "\n3.Sustitución (reemplazar texto)"

# Reemplazo simple (primera aparición):
# ${cadena/antiguo/nuevo}
#Reemplazo global (todas las apariciones):
# ${cadena//antiguo/nuevo}

# EJEMPLO
cadena="Hola mundo mundo"
echo -e "\n${cadena/mundo/planeta}"  # Imprime "Hola planeta mundo"
echo -e "\n${cadena//mundo/planeta}" # Imprime "Hola planeta planeta"

# 4.Eliminar prefijo o sufijo
echo -e "\n4.Eliminar prefijo o sufijo"

# Eliminar el prefijo más corto: ${cadena#patrón}

# Eliminar el prefijo más largo: ${cadena##patrón}

# Eliminar el sufijo más corto:${cadena%patrón}

# Eliminar el sufijo más largo: ${cadena%%patrón}

# EJEMPLO
cadena="path/to/file.txt"

echo -e "\n${cadena#*/}"  # Elimina hasta la primera barra: "to/file.txt"
echo -e "\n${cadena##*/}" # Elimina hasta la última barra: "file.txt"
echo -e "\n${cadena%.*}"  # Elimina la extensión: "path/to/file"
echo -e "\n${cadena%%.*}" # Elimina todo desde el primer punto: "path/to/file"

# 5.Conversión de mayúsculas y minúsculas
echo -e "\n5.Conversión de mayúsculas y minúsculas"

# Puedes convertir texto en mayúsculas o minúsculas usando operadores de expansión:
# - Minúsculas: ${cadena,,}
# - Mayúsculas: ${cadena^^}
# - Primera letra en mayúscula: ${cadena^}
# - Primera letra en minúscula: ${cadena,}

# EJEMPLO

cadena="Hola Mundo"

echo -e "\n${cadena,,}" # hola mundo
echo -e "\n${cadena^^}" # HOLA MUNDO
echo -e "\n${cadena^}"  # Hola Mundo
echo -e "\n${cadena,}"  # hola Mundo

# 6. Concatenación de cadenas
echo -e "\n6. Concatenación de cadenas"

# Al colocar juntas dos cadenas se concatenan
str1="Hola"
str2="Mundo"
resultado="$str1 $str2"
echo -e "\n$resultado" # Imprime "Hola Mundo"

# 7. Expresiones regulares y patrones
echo -e "\n7. Expresiones regulares y patrones"

# Comprobar si una cadena coincide con un patrón: Con [[ ... ]], puedes usar patrones de coincidencia glob:

cadena="Hola mundo"

if [[ $cadena == H* ]]; then
    echo -e "\nLa cadena comienza con 'H'"
fi

# Buscar con expresiones regulares: Para expresiones regulares más avanzadas, usa =~ dentro de [[ ... ]]:

cadena="abc123"

if [[ $cadena =~ ^abc[0-9]+$ ]]; then
    echo -e "\nLa cadena comienza con 'abc' y termina con números"
fi

# RESUMEN EJEMPLOS PRACTICOS

#Imprimir nombre de variable literalmente
echo -e "\nUsar '\' delante de la cadena imprime la variable literalmente"
echo -e "\$cadena"

# Contar palabras en una cadena:
echo -e "\nContar palabras en una cadena:"
cadena="Hola, este es un ejemplo"
echo -e "\nNúmero de palabras: $(echo -e $cadena | wc -w)" # Imprime 5

# Verificar si una cadena contiene un texto:
echo -e "\nVerificar si una cadena contiene un texto:"

cadena="Hola mundo"
if [[ $cadena == *mundo* ]]; then
    echo -e "\nLa cadena contiene 'mundo'"
fi

# Invertir una cadena:
echo -e "\nInvertir una cadena:"

cadena="Hola"
echo -e "\n$cadena" | rev # Imprime "aloH"
