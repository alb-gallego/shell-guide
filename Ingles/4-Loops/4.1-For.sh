#!/bin/bash

# 4.1 For Loop
echo -e "\n4.1 For Loops\n"

# The basic syntax of a for loop is as follows:

# for variable in list; do
# > Commands to execute
# done

fruits=("apple" "pear" "banana")

# Iterate over a list of elements
# OPTION 1
echo -e "Iterate list of elements OPTION 1"
for fruit in "${fruits[@]}"; do
    echo -e "Fruit: $fruit"
done

# Iterate over a list of elements
# OPTION 2
echo -e "Iterate list of elements OPTION 2"
for fruit in fruit_1 fruit_2 fruit_3; do
    echo -e "Fruit: $fruit"
done

# Iterate over a range of numbers
echo -e "Range of numbers"
for i in {1..5}; do
    echo -e "Number: $i"
done

# Iterate over a range of numbers following a sequence
# OPTION 1
echo -e "Range of numbers following a sequence OPTION 1"
for i in $(seq 1 2 10); do
    echo -e "Number: $i"
done

# OPTION 2
echo -e "Range of numbers following a sequence OPTION 2"
for ((i = 1; i <= 10; i += 2)); do
    echo -e "Number: $i"
done

echo -e "NOTE: ONLY FOR !BASH\n
Iterate over a range of numbers specifying the number of steps\n
for i in {1..10..2}; do\n
    echo -e \"Number: \$i\"\n
done\n"

echo -e "Range of numbers following a sequence OPTION 3(HACK)"
for i in {1..10}; do
    if ((i % 2 == 1)); then
        echo -e "Number: $i"
    fi
done

echo -e "\nRange of numbers following a sequence OPTION 4(Using 'eval' command)"
eval "for i in {1..10..2}; do echo Number: \$i; done"

# Nested loops
echo -e "\nNested Loops\n"

# For more complex structures, you can nest for loops

# EXAMPLE
for i in {1..3}; do
    for j in {1..3}; do
        echo -e "$i x $j = $((i * j))"
    done
done

# Loop control
echo -e "\nLoop Control\n"

# BREAK
echo -e "\n'break' command to interrupt the loop and exit it\n"

for i in {1..10}; do
    if [ $i -eq 5 ]; then
        echo -e "Breaking the loop"
        break
    fi
    echo -e "Number: $i"
done

# CONTINUE
echo -e "\n'continue' command to skip to the next iteration without executing the rest of the code in the loop\n"

for i in {1..5}; do
    if [ $i -eq 3 ]; then
        echo -e "Skipping number $i"
        continue
    fi
    # Without the 'continue' line, this line would print 'Number 3'
    echo -e "Number: $i"
done

# PRACTICAL EXAMPLES
echo -e "\nPRACTICAL EXAMPLES\n"

echo -e "Iterate over the files in a directory\n"
for file in $(ls ./Loops/*.sh); do
    echo -e "File found: $file"
done

echo -e "\nIterate over running processes\n"
for process in $(ps -e | awk '{print $1}'); do
    echo -e "PID: $process\n"
    break
done
