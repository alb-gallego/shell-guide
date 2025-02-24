#!/bin/bash

# Select Loop
echo -e "\n4.4 Bucles Select\n"

# Select lop generates an interactive menu based on options

# while condition; do
#     >commands to execute
# done

echo -e "Select an option:"
select option in "Option 1" "Option 2" "Quit"; do
    case $option in
    "Option 1")
        echo -e "You selected Option 1"
        ;;
    "Option 2")
        echo -e "You selected Option 2"
        ;;
    "Quit")
        echo -e "Bye!"
        break
        ;;
    *)
        echo -e "Not valid option"
        ;;
    esac
done
