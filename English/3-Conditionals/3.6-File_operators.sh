#!/bin/bash

# 3.6 - File Operators
# -e    The file or directory exists    [ -e "file.txt" ]
# -f    It's a regular file            [ -f "file.txt" ]
# -d    It's a directory               [ -d "directory" ]
# -s    The file is not empty          [ -s "file.txt" ]
# -r    Has read permissions           [ -r "file.txt" ]
# -w    Has write permissions          [ -w "file.txt" ]
# -x    Has execute permissions        [ -x "script.sh" ]
# -h or -L It's a symbolic link        [ -L "link" ]
# -p    It's a FIFO or named pipe      [ -p "fifo" ]
# -c    It's a character device file  [ -c "device" ]
# -b    It's a block device file      [ -b "device" ]
# -t    The file descriptor is associated with a terminal  [ -t 1 ]
echo -e "\n3.6 File Operators\n"
# TEST DATA INITIALIZATION
file="file.txt"
echo -e "Test file" >"$file"

# "-e" Operator

echo -e "\nFile exists"
if [ -e "$file" ]; then
    echo -e "The file $file exists"
else
    echo -e "The file $file does not exist"
fi

# "-f" Operator
# NOTE: A regular file is a standard type of file in Unix/Linux-based operating systems. It is the most common file type and represents any file that is not a directory, symbolic link, device, or special file.

# Main features of a regular file:

# 1. Data content:
#     Can contain text, binaries, images, source code, executables, etc.
#     It is used to store "normal" data that can be read or written.

# 2. No special properties:
#     It is not a directory.
#     It is not a symbolic link.
#     It is not a device file (like those found in /dev).
#     It is not a pipe or FIFO.

# EXAMPLE
# file.txt        -> Regular file
# script.sh       -> Regular file (executable)
# directory/      -> Directory
# symbolic_link   -> Symbolic link pointing to another file

echo -e "\nFile is regular"
if [ -f "$file" ]; then
    echo -e "It is a regular file"
else
    echo -e "It is not a regular file"
fi

echo -e "\nFile is NOT regular"
fileNr="file"
if [ -f "$fileNr" ]; then
    echo -e "It is a regular file"
else
    echo -e "It is not a regular file"
fi

# DELETE TEST DATA
rm "$file"

# "-d" Operator
# TEST DATA INITIALIZATION
directory="folder"
mkdir $directory

echo -e "\nDirectories"
if [ -d "$directory" ]; then
    echo -e "The directory $directory exists"
else
    echo -e "The directory $directory does not exist"
fi

# DELETE TEST DATA
rm -r $directory

if [ -d "$directory" ]; then
    echo -e "The directory $directory exists"
else
    echo -e "The directory $directory does not exist"
fi

# ==========================================
# 3.6.1 File comparison operators
# -nt    file1 is newer than file2     [ "file1" -nt "file2" ]
# -ot    file1 is older than file2     [ "file1" -ot "file2" ]
# -ef    Both files are the same (same inode)  [ "file1" -ef "file2" ]
echo -e "\nFile Comparison Operators\n"

# TEST DATA INITIALIZATION
file1="file1.txt"
file2="file2.txt"
touch $file2
sleep 1
touch $file1

if [ $file1 -nt $file2 ]; then
    echo -e "\nfile1.txt is newer than file2.txt"
fi

# DELETE TEST DATA
rm $file1 && rm $file2

# TEST DATA INITIALIZATION
touch $file1
sleep 1
touch $file2

if [ $file1 -ot $file2 ]; then
    echo -e "\nfile1.txt is older than file2.txt"
fi
# DELETE TEST DATA
rm $file1 && rm $file2

# TEST DATA INITIALIZATION
touch $file1

ln "$file1" "$file2" # Create hard link -> it's like creating a pointer to the file

if [ $file1 -ef $file2 ]; then
    echo -e "\nThese files are the same, process only one"
fi
# DELETE TEST DATA
rm $file1 && rm $file2
