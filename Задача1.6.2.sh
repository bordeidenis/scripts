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
