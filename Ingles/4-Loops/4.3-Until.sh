#!/bin/bash

# 4.3 Until Loop
echo -e "\n4.3 Until Loops\n"

# The basic syntax of an until loop is as follows:

# until condition; do
#     > Commands to execute
# done

# Counting from 1 to 5
echo -e "\nCounting from 1 to 5\n"

counter=1
until [ $counter -gt 5 ]; do
    echo -e "Counter: $counter"
    ((counter++))
done

# Loop control
echo -e "\nLoop control\n"

# BREAK
echo -e "\n'break' command to interrupt the loop and exit it\n"

counter=1
until [ $counter -gt 5 ]; do
    echo -e "Only the first number is printed: $counter"
    break
    ((counter++))
done

# CONTINUE
echo -e "\n'continue' command to skip to the next iteration without executing the remaining code in the loop\n"

until [ $counter -gt 5 ]; do
    if [ $counter -eq 3 ]; then
        echo -e "Skipping number $counter"
        ((counter++))
        continue
    fi
    # Without the 'continue' line, this would print 'Number 3'
    echo -e "Number: $counter"
    ((counter++))
done
