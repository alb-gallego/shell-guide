#!/bin/bash

# 1-Introducción
echo -e "\n1-Introduction\n"

# To execute a bash script, it is always necessary for the system
# to give execution permissions to the script:
# Run the following command: "chmod +x my_script.sh"

# Once you have permissions, there are two ways to execute a script:
# - ./my_script.sh
# - source my_script.sh

# 01 - Command interpreters
# Choose the shell that this script should use
# the most famous are bash(#!/usr/bin/env bash) and zsh(#!/usr/bin/env zsh)
# In this case we will use bash for most examples

# You can also use #!/bin/zsh or #!/bin/bash at the beginning of the script

# 02 - Declare and use variables

# Declare and assign
name="World"
number=42

[ 0 -eq 1 ]
last_value=$? # $? captures the exit status of the last command

# Use variables
# To use variables, you have to use the "$" symbol
echo -e "Read value $last_value"
echo -e "Hello, $name"
echo -e "The number is $number"

# 03 - Read user input
echo -e "What is your name?"
# We establish which variable will store the value entered by the user
# If the variable contains a value, it will be overwritten
read name
echo -e "Hello, $name, welcome!"
