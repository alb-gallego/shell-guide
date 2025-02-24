#!/bin/bash

# 2.5 Booleans (Simulation)
echo -e "\n2.5 Booleans\n"

echo -e "Bash does not have a native boolean type, but you can simulate it using:\n"
echo -e "- Numbers: 0 as false, and 1 (or any other number) as true."
echo -e "- Comparison commands: They return 0 for true and 1 for false."

true_value=0
false_value=1

if [ $true_value -eq 0 ]; then
    echo -e "It is true"
fi
