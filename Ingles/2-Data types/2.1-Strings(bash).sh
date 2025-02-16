#!/bin/bash

# 2.1 Strings
echo -e "\n2.1 Strings\n"

# 1. String Length
echo -e "\n1.String Length"

string="Hello, world"
echo -e "\nThe length of the string is: ${#string}" # Prints 11

# 2. Substrings (slicing)
echo -e "\n2.Substring (slicing)"
# You can extract parts of a string with ${string:start:length}:
#       Start: Index to begin from (0 is the first).
#       Length: Optional, indicates how many characters to take.
string="Hello, world"
echo -e "\n${string:0:5}" # Prints "Hello"
echo -e "\n${string:7}"   # Prints "world"

# 3. Substitution (replacing text)
echo -e "\n3.Substitution (replacing text)"

# Simple replacement (first occurrence):
# ${string/old/new}
# Global replacement (all occurrences):
# ${string//old/new}

# EXAMPLE
string="Hello world world"
echo -e "\n${string/world/planet}"  # Prints "Hello planet world"
echo -e "\n${string//world/planet}" # Prints "Hello planet planet"

# 4. Removing prefixes or suffixes
echo -e "\n4.Removing prefixes or suffixes"

# Remove the shortest prefix: ${string#pattern}

# Remove the longest prefix: ${string##pattern}

# Remove the shortest suffix:${string%pattern}

# Remove the longest suffix: ${string%%pattern}

# EXAMPLE
string="path/to/file.txt"

echo -e "\n${string#*/}"  # Removes up to the first slash: "to/file.txt"
echo -e "\n${string##*/}" # Removes up to the last slash: "file.txt"
echo -e "\n${string%.*}"  # Removes the extension: "path/to/file"
echo -e "\n${string%%.*}" # Removes everything from the first dot: "path/to/file"

# 5. Uppercase and lowercase conversion
echo -e "\n5.Uppercase and lowercase conversion"

# You can convert text to uppercase or lowercase using expansion operators:
# - Lowercase: ${string,,}
# - Uppercase: ${string^^}
# - First letter uppercase: ${string^}
# - First letter lowercase: ${string,}

# EXAMPLE

string="Hello World"

echo -e "\n${string,,}" # hello world
echo -e "\n${string^^}" # HELLO WORLD
echo -e "\n${string^}"  # Hello World
echo -e "\n${string,}"  # hello World

# 6. String concatenation
echo -e "\n6.String concatenation"

# Placing two strings together concatenates them
str1="Hello"
str2="World"
result="$str1 $str2"
echo $result # Prints "Hello World"

# 7. Regular expressions and patterns
echo -e "\n7.Regular expressions and patterns"

# Check if a string matches a pattern: With [[ ... ]], you can use glob patterns:

string="Hello world"

if [[ $string == H* ]]; then
    echo -e "\nThe string starts with 'H'"
fi

# Search using regular expressions: For more advanced regular expressions, use =~ inside [[ ... ]]:

string="abc123"

if [[ $string =~ ^abc[0-9]+$ ]]; then
    echo -e "\nThe string starts with 'abc' and ends with numbers"
fi

# SUMMARY OF PRACTICAL EXAMPLES

# Print variable name literally
echo -e "Use '\' before the string prints the variable name literally"
echo -e "\$string"

# Count words in a string:
echo -e "\nCount words in a string:"
string="Hello, this is an example"
echo -e "\nNumber of words: $(echo $string | wc -w)" # Prints 5

# Check if a string contains a specific text:
echo -e "\nCheck if a string contains a specific text:"

string="Hello world"
if [[ $string == *world* ]]; then
    echo -e "\nThe string contains 'world'"
fi

# Reverse a string:
echo -e "\nReverse a string:"

string="Hello"
echo -e "\n$string" | rev # Prints "olleH"
