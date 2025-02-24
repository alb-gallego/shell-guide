#!/bin/bash

# 2.8 Processes
echo -e "\n2.8 Processes\n"

echo -e "Bash handles processes as numeric identifiers (PIDs), which can be used to manage and control background processes.\n"

# EXAMPLE
sleep 10 & # Runs the command in the background
pid=$!     # Gets the PID of the last background process
echo -e "PID: $pid"
kill $pid # Terminates the process

# 2.8.1 File Descriptors
echo -e "\n2.8.1 File Descriptors\n"

echo -e "Bash uses file descriptors to redirect input/output:
    - 0: Standard input (stdin)
    - 1: Standard output (stdout)
    - 2: Standard error (stderr)"
