#!/bin/zsh

# 2.2 Numbers
echo "\n2.2 Numbers\n"

# 1. Basic Arithmetic Operations

# Bash can perform mathematical operations using (( )) or the let command.

# Basic Syntax

# result=$(( operation ))

# Example:

a=10
b=5
sum=$((a + b))
difference=$((a - b))
product=$((a * b))
quotient=$((a / b)) # Integer division
remainder=$((a % b))

echo "Sum: $sum, Difference: $difference, Product: $product, Quotient: $quotient, Remainder: $remainder"

# Increment and Decrement

# You can use ++ and -- to increment or decrement variables:

a=10
((a++)) # Increment after evaluation
((++a)) # Increment before evaluation
((a--)) # Decrement after evaluation
((--a)) # Decrement before evaluation

# 2. Numeric Comparisons

# Bash offers operators to compare numbers, which differ from string operators.

# 3. Advanced Operators

# Bitwise Operations

# Operator         Operation
# &                Bitwise AND
# |                Bitwise OR
# ^                Bitwise XOR
# ~                Bitwise NOT
# <<               Left Shift
# >>               Right Shift

# Example:

a=5            # Binary: 0101
b=3            # Binary: 0011
and=$((a & b)) # Result: 0001 -> 1
or=$((a | b))  # Result: 0111 -> 7
xor=$((a ^ b)) # Result: 0110 -> 6
not=$((~a))    # Complement: system-dependent
# shift_left=$((a << 1))  # 1010 -> 10
shift_right=$((a >> 1)) # 0010 -> 2

echo "AND: $and, OR: $or, XOR: $xor, NOT: $not, <<: $shift_left, >>: $shift_right"

# 4. Using Numbers in Loops

# Numbers are fundamental in for and while loops:

# Example with for:

for i in {1..5}; do
    echo "Number: $i"
done

# Example with while:

n=1
while [ $n -le 5 ]; do
    echo "Number: $n"
    ((n++))
done

# 5. Advanced Math Functions

# Bash does not directly support floating-point calculations, but you can use tools like `bc` or `awk`.

# Operations with `bc`:

echo "5 + 2.5" | bc       # Addition
echo "10 / 3" | bc -l     # Division with decimals
echo "scale=2; 22/7" | bc # Result with two decimals

# Using math functions in `bc`:

echo "sqrt(16)" | bc           # Square root
echo "scale=4; s(0.5)" | bc -l # Sine of 0.5 radians

# 6. Number Validation

# Checking if it's a number

# You can use a regular expression to validate if an input is numeric.

number="123"
if [[ $number =~ ^[0-9]+$ ]]; then
    echo "$number is an integer"
else
    echo "$number is not a number"
fi

# Validate floating-point number:

number="12.34"
if [[ $number =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "$number is a valid number"
else
    echo "$number is not valid"
fi

# 7. Numeric Conversions

# Hexadecimal to Decimal:

hex="0x1A"
decimal=$((hex))
echo "Decimal: $decimal"

# Octal to Decimal:

octal="017"
decimal=$((octal))
echo "Decimal: $decimal"

# Decimal to Binary:

decimal=10
binary=$(echo "obase=2;$decimal" | bc)
echo "Binary: $binary"

# 8. Advanced Example: Interactive Calculator

echo "Enter two numbers:"
read num1
read num2

echo "Select an operation: +, -, *, /, %"
read operation

result=$(echo "$num1 $operation $num2" | bc -l)
echo "Result: $result"