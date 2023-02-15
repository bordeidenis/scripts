echo "Enter note:"
read hello
echo "Enter any number"
read int
cat << EOF >> file.txt
$(date "+%Y-%m-%d-%H:%M:%S") $hello $int
EOF
cat file.txt
