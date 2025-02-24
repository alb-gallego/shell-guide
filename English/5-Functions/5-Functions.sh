#!/bin/bash

# Functions are reusable blocks of code in Bash and Zsh that are defined once and can be invoked multiple times. Both interpreters support functions, but they have small differences in syntax, behavior, and advanced features.

# Defining functions

# 1. Basic definition

# Bash and Zsh

# function function_name {
#   # Code
# }

# Or, without the 'function' keyword:

# function_name() {
#   # Code
# }

# Both formats are valid in Bash and Zsh. However, Zsh offers more advanced features for functions.

# 2. Calling a function

# After defining a function, simply invoke it by typing its name:

# function_name

# This is the same in both Bash and Zsh.

# 3. Passing arguments to functions

# Arguments are accessed like in scripts, using $1, $2, etc. To access all arguments, use $@ or $*.

# Example:

my_function() {
  echo -e "First argument: $1"
  echo -e "All arguments: $@"
}

my_function "Hello" "World"

# Output:

# First argument: Hello
# All arguments: Hello World

# This works identically in Bash and Zsh.

# 4. Local variables in functions

# Bash and Zsh

# In Bash, use 'local' to declare local variables inside a function:

my_function() {
  local var="I am local"
  echo -e "$var"
}

my_function

# Advanced differences between Bash and Zsh

# 1. Return values

# In both interpreters, functions can return exit codes with 'return'. However:

# Bash

my_function() {
  local sum=$(( $1 + $2 ))
  echo -e "$sum"
  return 0
}
result=$(my_function 5 10)
echo -e "Result: $result"

# Zsh

# Works the same, but Zsh allows using functions as if they were built-in commands, thanks to its advanced modularity support.

# 2. Scope of global/local variables

# In Zsh, functions tend to have stricter handling of local variables than in Bash.

# Example in Zsh:

my_function() {
  local var="Local"
  echo -e "Inside the function: $var"
}

my_function
echo -e "Outside the function: ${var:-Not defined}"

# Output:

# Inside the function: Local
# Outside the function: Not defined

# In Bash, if you forget to declare the variable as local, it may leak into the global environment.

# 3. Anonymous functions (only in Zsh)

# Zsh supports anonymous functions, which are functions defined without a name and used immediately:

(){ echo -e "I am an anonymous function"; } 

# This is not available in Bash.

# 4. Fixed and variable-length parameters

# In Zsh, you can use positional arguments for functions with either fixed or variable length. This makes it more robust for handling inputs:

my_function() {
  echo -e "First: $1, Second: $2"
}
my_function one two three

# Zsh can ignore extra arguments with special options.

# 5. Advanced autocompletion in functions (only in Zsh)

# Zsh allows defining custom autocompletion inside functions, enhancing the user experience in the terminal:

# Example function
my_command() {
  echo -e "You ran: $1"
}

# Define completion
compdef '_files' my_command

# This is useful for complex commands.

# 6. Exporting functions

# Both interpreters allow exporting functions so they are available in subshells, but they use different syntax:

# Bash and Zsh

my_function() {
  echo -e "I am an exported function"
}
export -f my_function

# Summary of key differences

# Feature       | Bash   | Zsh
# --------------|--------|------
# Basic syntax  | function or function_name() | Same as Bash
# Local variables| local  | local (more strict)
# Anonymous functions | No | Yes
# Advanced autocompletion | No | Yes
# Exporting functions | export -f | export -f
# Modularity and reuse | Limited | Very advanced (like commands)