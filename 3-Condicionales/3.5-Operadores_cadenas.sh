# 3.5 - Operadores de cadenas
echo "\n3.5 Operadores de cadenas\n"

# "=" igual a
# "!=" NO es igual a
# "-z" logitud 0
# "-n" logitud DISTINTA a 0

cadena="Prueba"

# Operador "="
echo "\nIgual a (cadena_a_evaluar1 = cadena_a_evaluar2)"

if [ $cadena = "Prueba" ]; then
    echo "1 - La cadena coincide\n"
fi

# Operador "!="
echo "\nDiferente a (cadena_a_evaluar1 != cadena_a_evaluar)"

if [ $cadena != "Prueba1" ]; then
    echo "2 - La cadena NO coincide\n"
fi

# Operador "-z"
echo "\nLongitud de cadena 0 (-z cadena_a_evaluar)"
cadena=""
if [ -z $cadena ]; then
    echo "3 - La cadena tiene longitud 0\n"
fi

# Operador "-n"
echo "\nLongitud de cadena mayor a 0 (-n cadena_a_evaluar)"
cadena="Prueba"
if [ -n $cadena ]; then
    echo "4 - La cadena NO tiene longitud 0\n"
fi
