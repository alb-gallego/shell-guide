#!/bin/bash

# 3.2 - Truthy and Falsy
echo -e "\n3.2 Truthy and Falsy\n"

# 0=true
# 1=false
[ 0 -eq 1 ]
falsy=$?

if [ $falsy -eq 0 ]; then
    echo -e "1_1 - The condition is true\n"
else
    echo -e "1_2 - The condition is false\n"
fi

# Any command output that returns 0 is considered a truthy value
if ls $HOME >/dev/null; then
    echo -e "2 - The folder exists\n"
fi

if ls /random/route >/dev/null; then
    echo -e "3 - The folder exists\n"
else
    echo -e "4 - The folder does NOT exist\n"
fi

if echo -e "Truthy" >/dev/null; then
    echo -e "5 - Echo is successful\n"
fi
