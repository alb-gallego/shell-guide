#!/bin/bash

# 3.5 - String Operators
echo -e "\n3.5 String Operators\n"

# "=" equals
# "!=" not equal to
# "-z" length 0
# "-n" length NOT 0

string="Test"

# "=" Operator
echo -e "\nEquals (string_to_evaluate1 = string_to_evaluate2)"

if [ $string = "Test" ]; then
    echo -e "1 - The string matches\n"
fi

# "!=" Operator
echo -e "\nNot Equal to (string_to_evaluate1 != string_to_evaluate)"

if [ $string != "Test1" ]; then
    echo -e "2 - The string does NOT match\n"
fi

# "-z" Operator
echo -e "\nString length 0 (-z string_to_evaluate)"
string=""
if [ -z $string ]; then
    echo -e "3 - The string has length 0\n"
fi

# "-n" Operator
echo -e "\nString length greater than 0 (-n string_to_evaluate)"
string="Test"
if [ -n $string ]; then
    echo -e "4 - The string does NOT have length 0\n"
fi
