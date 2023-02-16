#!/bin/bash
echo "Введите имя файла"
read file
#if ! [ -f ~/Desktop/Scripts ]; then
#	echo "No file"
if [ -f $file ]; then
	echo "Файл существует. Удалить? да/нет."
	read answer1
if [ $answer1="да" ]; then
	rm $file
fi
elif ! [ -f $file ]; then
	echo "Файл не существует. Создать? да/нет."
	read answer2
	if [ $answer2="да" ]; then
	touch file.txt
	fi
fi