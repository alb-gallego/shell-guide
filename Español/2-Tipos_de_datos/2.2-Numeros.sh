#!/bin/bash

# 2.2-Números
echo -e "\n2.2-Números\n"

# 1. Operaciones aritméticas básicas

# Bash puede realizar operaciones matemáticas usando (( )) o el comando let.

# Sintaxis básica

# resultado=$(( operación ))

# Ejemplo:

a=10
b=5
suma=$((a + b))
resta=$((a - b))
multiplicacion=$((a * b))
division=$((a / b)) # División entera
modulo=$((a % b))

echo "Suma: $suma, Resta: $resta, Multiplicación: $multiplicacion, División: $division, Módulo: $modulo"

# Incremento y decremento

# Puedes usar ++ y -- para incrementar o decrementar variables:

a=10
((a++)) # Incrementa después de evaluar
((++a)) # Incrementa antes de evaluar
((a--)) # Decrementa después de evaluar
((--a)) # Decrementa antes de evaluar

# 2. Comparaciones numéricas

# Bash ofrece operadores para comparar números, que son diferentes a los operadores de cadenas.

# 3. Operadores avanzados

# Bit a bit

# # Operador	Operación
# &	AND bit a bit
# `	`
# ^	XOR bit a bit
# ~	Complemento bit a bit
# <<	Desplazamiento a la izquierda
# >>	Desplazamiento a la derecha

# Ejemplo:

a=5            # Binario: 0101
b=3            # Binario: 0011
and=$((a & b)) # Resultado: 0001 -> 1
or=$((a | b))  # Resultado: 0111 -> 7
xor=$((a ^ b)) # Resultado: 0110 -> 6
not=$((~a))    # Complemento: depende del sistema
# shift_left=$((a << 1))  # 1010 -> 10
shift_right=$((a >> 1)) # 0010 -> 2

echo "AND: $and, OR: $or, XOR: $xor, NOT: $not, <<: $shift_left, >>: $shift_right"

# 4. Uso de números en bucles

# Los números son fundamentales en bucles for y while:

# Ejemplo con for:

for i in {1..5}; do
    echo "Número: $i"
done

# Ejemplo con while:

n=1
while [ $n -le 5 ]; do
    echo "Número: $n"
    ((n++))
done

# 5. Funciones matemáticas avanzadas

# Bash no soporta cálculos de punto flotante directamente, pero puedes usar herramientas como bc o awk.

# Operaciones con bc:

echo "5 + 2.5" | bc       # Suma
echo "10 / 3" | bc -l     # División con decimales
echo "scale=2; 22/7" | bc # Resultado con dos decimales

# Uso de funciones matemáticas en bc:

echo "sqrt(16)" | bc           # Raíz cuadrada
echo "scale=4; s(0.5)" | bc -l # Seno de 0.5 radianes

# 6. Validación de números

# Comprobar si es un número

# Puedes usar una expresión regular para validar si una entrada es numérica.

numero="123"
if [[ $numero =~ ^[0-9]+$ ]]; then
    echo "$numero es un número entero"
else
    echo "$numero no es un número"
fi

# Validar punto flotante:

numero="12.34"
if [[ $numero =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "$numero es un número válido"
else
    echo "$numero no es válido"
fi

# 7. Conversiones numéricas

# Hexadecimal a decimal:

hex="0x1A"
decimal=$((hex))
echo "Decimal: $decimal"

# Octal a decimal:

octal="017"
decimal=$((octal))
echo "Decimal: $decimal"

# Decimal a binario:

decimal=10
binario=$(echo "obase=2;$decimal" | bc)
echo "Binario: $binario"

# 8. Ejemplo avanzado: Calculadora interactiva

echo "Introduce dos números:"
read num1
read num2

echo "Selecciona una operación: +, -, *, /, %"
read operacion

resultado=$(echo "$num1 $operacion $num2" | bc -l)
echo "Resultado: $resultado"
