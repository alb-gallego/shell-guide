#!/usr/bin/env bash
# 2.3 Arrays
echo -e "\n2.3 Arrays\n"

# 1. Creating an Array

# In Bash, you can create an array using parentheses ().

# Basic Syntax:

array=(value1 value2 value3)

# Example:

fruits=("apple" "banana" "pear")

# This array has 3 elements: "apple", "banana", and "pear".

# 2. Accessing Array Elements

# To access the elements of an array, use the syntax ${array[index]}, where index is the position of the element (starting from 0).

# Example:

fruits=("apple" "banana" "pear")
echo ${fruits[0]} # Prints "apple"
echo ${fruits[1]} # Prints "banana"
echo ${fruits[2]} # Prints "pear"

# 3. Getting the Size of an Array

# To get the number of elements in an array, use the expression ${#array[@]}.

# Example:

fruits=("apple" "banana" "pear")
echo -e "The number of fruits is: ${#fruits[@]}" # Prints 3

# 4. Iterating Over an Array

# You can iterate over the elements of an array using a for loop.

# Example 1: Iterate through an array using for

fruits=("apple" "banana" "pear")
for fruit in "${fruits[@]}"; do
    echo -e "Fruit: $fruit"
done

# Expected output:

# Fruit: apple
# Fruit: banana
# Fruit: pear

# Example 2: Iterating using indices

fruits=("apple" "banana" "pear")
for ((i = 0; i < ${#fruits[@]}; i++)); do
    echo -e "Fruit $((i + 1)): ${fruits[$i]}"
done

# Expected output:

# Fruit 1: apple
# Fruit 2: banana
# Fruit 3: pear

# 5. Modifying Array Elements

# You can modify the elements of an array by assigning a new value to a specific position.

# Example:

fruits=("apple" "banana" "pear")
fruits[1]="orange" # Changes "banana" to "orange"
echo ${fruits[1]}  # Prints "orange"

# 6. Adding Elements to an Array

# To add elements to the end of an array, use the syntax array+=(new_element).

# Example:

fruits=("apple" "banana" "pear")
fruits+=("kiwi")  # Adds "kiwi" at the end
echo ${fruits[@]} # Prints "apple banana pear kiwi"

# 7. Removing Elements from an Array

# You can remove an element from an array using the syntax unset array[index].

# Example:

fruits=("apple" "banana" "pear")
unset fruits[1]   # Removes "banana"
echo ${fruits[@]} # Prints "apple pear"

# Note that removing an element creates a “gap” in that position, and indices may not be consecutive.

# 8. Checking the Existence of an Element in an Array

# You can check if an index or key exists in an array using an if statement.

# Example:

fruits=("apple" "banana" "pear")
if [[ " ${fruits[@]} " =~ " banana " ]]; then
    echo -e "Banana is in the array."
else
    echo -e "Banana is not in the array."
fi

# Summary of Basic Array Operations in Bash

#  - Create an array: array=(element1 element2 element3)
#  - Access elements: ${array[index]}
#  - Get the size of the array: ${#array[@]}
#  - Iterate over the array: for i in "${array[@]}"; do ...
#  - Modify elements: array[index]="new_value"
#  - Add elements: array+=("new_element")
#  - Remove elements: unset array[index]
#  - Associative arrays: declare -A associative_array; associative_array["key"]="value"
#  - Check if a value exists in the array: [[ " ${array[@]} " =~ "value" ]]
