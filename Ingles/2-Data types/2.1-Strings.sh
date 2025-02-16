#!/bin/zsh
# 2.1 Strings
echo "\n2.1 Strings\n"

# 1. String Length
string="Hello, world"
echo "\nThe length of the string is: ${#string}" # Prints 11

# 2. Substrings (slicing)
# You can extract parts of a string with ${string:start:length}:
#       Start: Index to begin from (0 is the first).
#       Length: Optional, indicates how many characters to take.
string="Hello, world"
echo "\n${string:0:5}" # Prints "Hello"
echo "\n${string:7}"   # Prints "world"

# 3. Substitution (replacing text)

# Simple replacement (first occurrence):
${string/old/new}
# Global replacement (all occurrences):
${string//old/new}

# EXAMPLE
string="Hello world world"
echo "\n${string/world/planet}"  # Prints "Hello planet world"
echo "\n${string//world/planet}" # Prints "Hello planet planet"

# 4. Removing prefixes or suffixes

# Remove the shortest prefix: ${string#pattern}

# Remove the longest prefix: ${string##pattern}

# Remove the shortest suffix:${string%pattern}

# Remove the longest suffix: ${string%%pattern}

# EXAMPLE
string="path/to/file.txt"

echo "\n${string#*/}"  # Removes up to the first slash: "to/file.txt"
echo "\n${string##*/}" # Removes up to the last slash: "file.txt"
echo "\n${string%.*}"  # Removes the extension: "path/to/file"
echo "\n${string%%.*}" # Removes everything from the first dot: "path/to/file"

# 5. Uppercase and lowercase conversion

# You can convert text to uppercase or lowercase using expansion operators:
# - Lowercase: ${string,,}
# - Uppercase: ${string^^}
# - First letter uppercase: ${string^}
# - First letter lowercase: ${string,}

# EXAMPLE

string="Hello World"

echo "\n${string,,}" # hello world
echo "\n${string^^}" # HELLO WORLD
echo "\n${string^}"  # Hello World
echo "\n${string,}"  # hello World

# 6. String concatenation

# Placing two strings together concatenates them
str1="Hello"
str2="World"
result="$str1 $str2"
echo $result # Prints "Hello World"

# 7. Regular expressions and patterns

# Check if a string matches a pattern: With [[ ... ]], you can use glob patterns:

string="Hello world"

if [[ $string == H* ]]; then
    echo "\nThe string starts with 'H'"
fi

# Search using regular expressions: For more advanced regular expressions, use =~ inside [[ ... ]]:

string="abc123"

if [[ $string =~ ^abc[0-9]+$ ]]; then
    echo "\nThe string starts with 'abc' and ends with numbers"
fi

# SUMMARY OF PRACTICAL EXAMPLES

# Print variable name literally
echo Use '\' before the string
echo "\$string"

# Count words in a string:
string="Hello, this is an example"
echo "\nNumber of words: $(echo $string | wc -w)" # Prints 5

# Check if a string contains a specific text:
string="Hello world"
if [[ $string == *world* ]]; then
    echo "\nThe string contains 'world'"
fi

# Reverse a string:
string="Hello"
echo "\n$string" | rev # Prints "olleH"