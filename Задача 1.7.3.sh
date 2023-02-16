#!/bin/bash
numbers=(1 2 3 4 5)
for i in ${!numbers[@]}; do
	echo "${numbers[$i]}"
done

for (( i=1; i<6; i++ )); do
	echo $i
done

n=1
while [ $n -lt 6 ]; do
	echo $n
	n=$(( $n+1 )); 
done

x=1
until [ $x -gt 5 ]
do
  echo $x
  ((x++))
done
