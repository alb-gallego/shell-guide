#!/bin/bash

# 3.4 - Logical Operators
echo -e "\n3.4 Logical Operators\n"

# AND Operator
# && -> [] && []
# -a -> [ cond1 -a cond2]
echo -e "\nAND (&& or -a)\n"

a=5
b=10
if [ $a -ne 5 ] && [ $b -eq 10 ]; then
    echo -e "1 - Both conditions are true\n"
fi
echo -e "\n!IMPORTANT: Note: && only works inside [[ ... ]]. In [ ... ], use -a:\n"
if [ $a -ne 5 -a $b -eq 10 ]; then
    echo -e "2 - Both conditions are true\n"
fi
if [ $a -eq 5 && $b -eq 10 ]; then
    echo -e "3 - Failure\n"
fi

# OR Operator
# || -> [] || []
# -o -> [ cond1 -o cond2]
echo -e "\nOR (|| or -o)\n"
if [ $a -eq 5 ] || [ $b -eq 10 ]; then
    echo -e "4 - At least one condition is true\n"
fi
echo -e "\n!IMPORTANT: Note: || only works inside [[ ... ]]. In [ ... ], use -o:\n"
if [ $a -eq 5 -o $b -eq 10 ]; then
    echo -e "5 - At least one condition is true\n"
fi

if [ $a -eq 5 && $b -eq 10 ]; then
    echo -e "6 - Failure\n"
fi

# NOT Operator
# ! -> ! []
echo -e "\nNOT (! [condition_to_evaluate])\n"

if ! [ $a -eq 5 ]; then
    echo -e "7 - The condition is true\n"
else
    echo -e "8 - The condition is false\n"
fi
