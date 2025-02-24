#!/bin/zsh

# 2.4 Maps
echo "\n2.4 Maps\n"

# In zsh, maps (also called associative arrays) are a data structure that allows you to associate keys with values.

# 1. Creating a Map (Associative Array)

# In zsh, to declare a map (also called an associative array), you use the typeset -A command. This allows you to associate a key with a value instead of using numerical indices.

# Basic syntax:

typeset -A map
map[key1]="value1"
map[key2]="value2"

# Example of Creating a Map:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

# This map has three keys: "name", "age", "city", and their respective values: "John", 25, "Seville".

# 2. Accessing Values in a Map

# To access values in a map or associative array, use the syntax ${map[key]}, where key is the associated key of the value you want to retrieve.

# Example:

typeset -A person
person[name]="John"
person[age]=25

echo "Name: ${person[name]}" # Prints "John"
echo "Age: ${person[age]}"   # Prints 25

# 3. Modifying Values in a Map

# You can modify values in a map by assigning a new value to a specific key.

# Example:

person[age]=26
echo "Updated Age: ${person[age]}" # Prints 26

# 4. Checking for the Existence of a Key in a Map

# To check if a key exists in a map, you can use an if structure along with [[ -v ]] (which verifies if a variable or key is defined in a map).

# Example:

typeset -A person
person[name]="John"
person[age]=25

if [[ -v person[name] ]]; then
    echo "The key 'name' exists in the map."
else
    echo "The key 'name' does not exist in the map."
fi

# 5. Getting All Keys and Values from a Map

# You can retrieve all keys from a map using ${(k)map} and all values using ${(v)map}.

# Example:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

echo "Keys: ${(k)person}"   # Keys: name age city
echo "Values: ${(v)person}" # Values: John 25 Seville

# 6. Iterating Over a Map (Associative Array)

# To iterate over a map in zsh, you can use a for loop. It is important to remember that when working with maps, you need to iterate over both keys and values. Below are detailed examples.

# 6.1 Iterating Over Keys Only

# To retrieve only the keys from the map, you can use ${(k)map} in a for loop.

# Example:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

for key in "${(k)person}"; do
    echo "Key: $key"
done

# Expected output:

# Key: name
# Key: age
# Key: city

# 6.2 Iterating Over Keys and Values

# To iterate over both keys and values in a map, you can use the following format:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

for key in "${(k)person}"; do
    echo "Key: $key, Value: ${person[$key]}"
done

# Expected output:

# Key: name, Value: John
# Key: age, Value: 25
# Key: city, Value: Seville

# 7. Removing Elements from a Map

# You can remove a key from a map using unset.

# Example:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

unset "person[age]" # Removes the "age" key
echo "Keys after removing 'age': ${(k)person}" # Prints "name city"

# 8. Checking if a Value Exists in a Map

# You can check if a specific value exists in a map using a for loop or by using [[ "${(k)map}" =~ "$value" ]].

# Example using a For Loop:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

value_to_find="John"
found=false

for value in "${(v)person}"; do
    if [[ "$value" == "$value_to_find" ]]; then
        found=true
        break
    fi
done

if $found; then
    echo "The value '$value_to_find' exists in the map."
else
    echo "The value '$value_to_find' does not exist in the map."
fi

# Example using [[ =~ ]]:

typeset -A person
person[name]="John"
person[age]=25
person[city]="Seville"

value_to_find="Seville"

if [[ "${(v)person}" =~ "$value_to_find" ]]; then
    echo "The value '$value_to_find' exists in the map."
else
    echo "The value '$value_to_find' does not exist in the map."
fi

# 9. Multidimensional Arrays with Maps

# Although zsh does not natively support multidimensional arrays, you can simulate a multidimensional array by creating a map where the value is another map or an array.

# Example of Multidimensional Arrays:

typeset -A students

# Define an associative array as a value
students[John]="Maths, Science"
students[Ana]="History, Art"
students[Carlos]="Physics, Chemistry"

for student in "${(k)students}"; do
    echo "$student studies ${students[$student]}"
done

# Expected output:

# John studies Maths, Science
# Ana studies History, Art
# Carlos studies Physics, Chemistry

# Summary: Basic Operations with Maps in Zsh

# • Declare a map: typeset -A map; map[key]="value"
# • Access a value: ${map[key]}
# • Modify a value: map[key]="new_value"
# • Get keys: ${(k)map}
# • Get values: ${(v)map}
# • Iterate over keys: for key in "${(k)map}"; do ...
# • Iterate over keys and values: for key in "${(k)map}"; do echo "Key: $key, Value: ${map[$key]}"; done
# • Remove a value: unset map[key]
# • Check for key existence: [[ -v map[key] ]]
# • Check for value existence: [[ "${(v)map}" =~ "$value" ]]