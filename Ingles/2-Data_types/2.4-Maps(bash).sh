#!/bin/bash

# 2.4-Maps
echo -e "\n2.4-Maps\n"

# In zsh (and in bash with some limitations), maps (also called associative arrays)
# are a data structure that allows you to associate keys with values.

# 1. Creating a Map (Associative Array)

# In zsh, to declare a map (also called an associative array), you use the declare -A command.
# This allows you to associate a key with a value instead of using numeric indexes.

# Basic syntax:

declare -A map
map["key1"]="value1"
map["key2"]="value2"

# Example of Creating a Map:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

# This map has three keys: "name", "age", "city", and their respective values: "Juan", 25, "Seville".

# 2. Accessing Values in a Map

# To access values in a map or associative array, use the syntax ${map[key]},
# where "key" is the key associated with the value you want to retrieve.

# Example:

declare -A person
person["name"]="Juan"
person["age"]=25

echo -e "Name: ${person[name]}" # Prints "Juan"
echo -e "Age: ${person[age]}"   # Prints 25

# 3. Modifying Values in a Map

# You can modify values in a map by assigning a new value to a specific key.

# Example:

person["age"]=26
echo -e "Updated age: ${person[age]}" # Prints 26

# 4. Checking if a Key Exists in a Map

# To check if a key exists in a map, you can use an if structure along with [[ -v ]]
# (which verifies if a variable or key is defined in a map).

# Example:

declare -A person
person["name"]="Juan"
person["age"]=25

if [[ -v person[name] ]]; then
    echo -e "The key 'name' exists in the map."
else
    echo -e "The key 'name' does not exist in the map."
fi

# 5. Getting All Keys and Values from a Map

# You can get all the keys of a map using ${!map[@]} and all the values using ${map[@]}.

# Example:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

echo -e "Keys: ${!person[@]}"  # Prints "name age city"
echo -e "Values: ${person[@]}" # Prints "Juan 25 Seville"

# 6. Iterating Over a Map (Associative Array)

# To iterate over a map in zsh, you can use a for loop.
# It's important to remember that when working with maps, you need to iterate over both keys and values.
# Below are detailed examples.

# 6.1 Iterating Over Keys Only

# To get only the keys of the map, you can use ${!map[@]} in a for loop.

# Example:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

for key in "${!person[@]}"; do
    echo -e "Key: $key"
done

# Expected output:

# Key: name
# Key: age
# Key: city

# 6.2 Iterating Over Keys and Values

# To iterate over the keys and values of a map, you can use the following format:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

for key in "${!person[@]}"; do
    echo -e "Key: $key, Value: ${person[$key]}"
done

# Expected output:

# Key: name, Value: Juan
# Key: age, Value: 25
# Key: city, Value: Seville

# 7. Deleting Elements from a Map

# You can delete a key from a map using unset.

# Example:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

unset "person[age]"                                # Deletes the key "age"
echo -e "Keys after deleting 'age': ${!person[@]}" # Prints "name city"

# 8. Checking if a Value Exists in a Map

# You can check if a specific value exists in a map using a for loop
# or by using [[ "${map[@]}" =~ "$value" ]].

# Example using a for loop:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

value_to_search="Juan"
found=false

for value in "${person[@]}"; do
    if [[ "$value" == "$value_to_search" ]]; then
        found=true
        break
    fi
done

if $found; then
    echo -e "The value '$value_to_search' exists in the map."
else
    echo -e "The value '$value_to_search' does not exist in the map."
fi

# Example using [[ =~ ]]:

declare -A person
person["name"]="Juan"
person["age"]=25
person["city"]="Seville"

value_to_search="Seville"

if [[ "${person[@]}" =~ "$value_to_search" ]]; then
    echo -e "The value '$value_to_search' exists in the map."
else
    echo -e "The value '$value_to_search' does not exist in the map."
fi

# 9. Multidimensional Arrays with Maps

# Although zsh does not directly support multidimensional arrays, you can simulate
# a multidimensional array by creating a map whose value is another map or an array.

# Example of Multidimensional Arrays:

declare -A students

# Define an associative array as a value
students["Juan"]="Maths, Science"
students["Ana"]="History, Art"
students["Carlos"]="Physics, Chemistry"

for student in "${!students[@]}"; do
    echo -e "$student studies ${students[$student]}"
done

# Expected output:

# Juan studies Maths, Science
# Ana studies History, Art
# Carlos studies Physics, Chemistry

# Summary: Basic Operations with Maps in Zsh

# •	Declare a map: declare -A map; map["key"]="value"
# •	Access a value: ${map[key]}
# •	Modify a value: map[key]="new_value"
# •	Get keys: ${!map[@]}
# •	Get values: ${map[@]}
# •	Iterate over keys: for key in "${!map[@]}"; do ...
# •	Iterate over keys and values: for key in "${!map[@]}"; do echo -e "Key: $key, Value: ${map[$key]}"; done
# •	Delete a value: unset map[key]
# •	Check if a key exists: [[ -v map[key] ]]
# •	Check if a value exists: [[ "${map[@]}" =~ "$value" ]]
