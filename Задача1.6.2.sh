#!/bin/bash
#echo "Enter note:" 
#read string > file228.txt
#echo "Enter any number:"
#read int > file228.txt
#time=$(date "+%Y-%m-%d-%H:%M:%S")
#echo "$time"
echo "Enter note:"
read hello
echo "Enter any number:"
read int
cat << EOF >> file.txt
Enter note: $hello
Enter int: $int
Time: $(date "+%Y-%m-%d-%H:%M:%S")
EOF
cat file.txt