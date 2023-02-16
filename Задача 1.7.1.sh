#!/bin/bash

num_a=2
read num_b

if [ $num_a -gt $num_b ]; then
	echo "Загадонное число больше"
elif [ $num_a -lt $num_b ]; then 
	echo "Загадонное число меньше"
elif [ $num_a -eq $num_b ]; then
	echo " Вы угадали!"
else
	echo $num_b "is not a number"
fi