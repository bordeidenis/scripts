grep 'Class 1' 8_t2_studetslist.csv
grep 'Class 1\|Hugh' 8_t2_studetslist.csv
grep 'Kiara\|Hugh\|Felix' 8_t2_studetslist.csv
grep 'Class 2\|Class 3' 8_t2_studetslist.csv
grep -E 'Class 1|Class 2|Class 3' 8_t2_studetslist.csv
grep '\<M' 8_t2_studetslist.csv
grep "Class [^2-6]" 8_t2_studetslist.csv
grep '\<0' 8_t2_studetslist.csv
grep -E '7$|9$' 8_t2_studetslist.csv
grep -A9 "test+40@gmail.com" 8_t2_studetslist.csv
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\b" 8_t2_studetslist.csv
