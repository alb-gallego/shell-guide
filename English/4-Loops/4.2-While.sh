#!/bin/bash

# While Loop
echo -e "\n4.2 While Loops\n"

# The basic syntax of a while loop is as follows:

# while condition; do
#     > Commands to execute
# done

# Count from 1 to 5
echo -e "\nCounting from 1 to 5\n"

counter=1
while [ $counter -le 5 ]; do
    echo -e "Counter: $counter"
    ((counter++))
done

# Read file line by line
echo -e "\nRead file line by line\n"
# INITIALIZE TEST DATA
echo -e "\nLine 1\nLine 2\nLine 3\nLine 4" >"file.txt"

while IFS= read -r line; do
    if [ -n "$line" ]; then
        echo -e "Line: $line"
    fi
done <file.txt

# DELETE TEST DATA
rm "file.txt"

# Loop control
echo -e "\nLoop Control\n"

# BREAK
echo -e "\n'break' command to interrupt the loop and exit it\n"

counter=1
while [ $counter -le 5 ]; do
    echo -e "Only the first number is printed: $counter"
    break # Interrupt the loop here, so only the first number will be printed
    ((counter++))
done

# CONTINUE
echo -e "\n'continue' command to skip to the next iteration without executing the rest of the code in the loop\n"

while [ $counter -le 5 ]; do
    if [ $counter -eq 3 ]; then
        echo -e "Skipping number $counter"
        ((counter++))
        continue # Skips this iteration and continues with the next number
    fi
    # Without the 'continue' line, this line would print 'Number 3'
    echo -e "Number: $counter"
    ((counter++))
done
