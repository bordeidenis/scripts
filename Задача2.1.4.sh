# папка с файлами должна находится в той же папке, откуда и происходит запуск скриптов.
# в моем случае cd Desktop/Scripts, в противном случае скрипт не найдет папку
read -p "Введите новый размер файла (в байтах): " new_size
read -p "Введите путь к директории: " directory
if [ ! -d "$directory" ]; then
  echo "Директория не существует."
fi

for i in "$directory"/*
do
  if [ -f "$i" ]; then
    truncate -s "$new_size" "$i"
  fi
done
echo "Проверьте новый размер файлов"