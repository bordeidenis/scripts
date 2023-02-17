echo "вывести строки где есть 'Class 1'"
grep 'Class 1' 8_t2_studetslist.csv
echo "вывести строки где есть 'Class 1' или имя 'Hugh'"
grep 'Class 1\|Hugh' 8_t2_studetslist.csv
echo "вывести строки с именами 'Kiara' или 'Hugh' или 'Felix'"
grep 'Kiara\|Hugh\|Felix' 8_t2_studetslist.csv
echo "вывести строки с 'Class 2' и 'Class 3'"
grep 'Class 2\|Class 3' 8_t2_studetslist.csv
echo "вывести строки с 'Class 1' по 'Class 3'"
grep -E 'Class 1|Class 2|Class 3' 8_t2_studetslist.csv
echo "вывести отсортированные строки где имя начинается с 'M'"
grep '\<M' 8_t2_studetslist.csv
echo "вывести строки где все классы кроме 1 и 7 исключены из вывода"
grep "Class [^2-6]" 8_t2_studetslist.csv
echo "вывести строки где счет студента 0"
grep '\<0' 8_t2_studetslist.csv
echo "вывести строки где счет студента от 7 до 9"
grep -E '7$|9$' 8_t2_studetslist.csv
echo "вывести строки студентов с  'test+40@gmail.com' по 'test+49@gmail.com'"
grep -A9 "test+40@gmail.com" 8_t2_studetslist.csv
echo "вывести только имейлы"
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\b" 8_t2_studetslist.csv
