#!/bin/bash

# 3.1 - If/Else
echo -e "\n3.1 If/Else\n"

number=6
# The condition must be enclosed in brackets.
# To use more advanced expressions, you can use [[ condition ]], which is more powerful and flexible.
# On the left, place the "main" value to compare. Example: "$number"
# In the center, use the operator you want. Example: "gt"
# On the right, the other value to compare. Example: "10"
# After the parenthesis, always use ";" followed by "then" to indicate the start of the conditional.
# !IMPORTANT: Always add "fi" to close the conditional.

if [ $number -gt 10 ]; then
    echo -e "The number is greater than 10"
else
    echo -e "The number is less than or equal to 10"
fi
