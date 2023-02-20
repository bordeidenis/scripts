echo "Введите количество строк для генерации:"
read strings
file="output.csv"
header="first_name,last_name,email,type"
first_names=("Felix" "Kaitlin" "Chantelle" "Joel" "Gabriella" "Violet" "Traci" "Mollie" "Rita" "Troy")
last_names=("Hoffman" "Harris" "Blair" "Frank" "Owen" "Elliott" "Brooks" "Dominguez" "Ward" "Casey")
account_types=("user" "admin" "user,admin" "guest" "editor" "author")
echo "$header" > $file
for ((i=0; i<strings; i++))
do
    first_name=${first_names[$RANDOM % ${#first_names[@]}]}
    last_name=${last_names[$RANDOM % ${#last_names[@]}]}
    account_type=${account_types[$RANDOM % ${#account_types[@]}]}
    email="$first_name.$last_name@example.com"
    echo "$first_name,$last_name,$email,$account_type" >> $file
done

