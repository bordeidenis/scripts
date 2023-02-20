#скачайте лог файл и впишите в переменную log свой путь к файлу
log="C:\Users\borde\Desktop\Scripts\2020-05-07T083742.log"
lines=$(wc -l $log)
validation_errors=$(grep -c "ValidationError" "$log")
data_errors=$(grep -c "DataError" "$log")
attribute_errors=$(grep -c "AttributeError" "$log")
integrity_errors=$(grep -c "IntegrityError" "$log")
source_errors=$(grep -c "source.*ValidationError" "$log")
title_errors=$(grep -c "title.*ValidationError" "$log")
doi_errors=$(grep -c "doi.*ValidationError" "$log")
license_errors=$(grep -c "license.*ValidationError" "$log")
description_errors=$(grep -c "description.*ValidationError" "$log")
publish_time_errors=$(grep -c "publish_time.*ValidationError" "$log")
authors_errors=$(grep -c "authors.*ValidationError" "$log")
journal_errors=$(grep -c "journal.*ValidationError" "$log")
keywords_errors=$(grep -c "keywords.*ValidationError" "$log")
url_errors=$(grep -c "url.*ValidationError" "$log")
type_errors=$(grep -c "type.*ValidationError" "$log")
non_field_errors=$(grep -c "non_field_errors" "$log")
echo "Total row: $lines"
echo -e "ValidationError: $validation_errors \n \t source: $source_errors"
echo -e "\t title: $title_errors"
echo -e "\t doi: $doi_errors"
echo -e "\t license: $license_errors"
echo -e "\t description: $description_errors"
echo -e "\t publish_time: $publish_time_errors"
echo -e "\t authors: $authors_errors"
echo -e "\t journal: $journal_errors"
echo -e "\t keywords: $keywords_errors"
echo -e "\t url: $url_errors"
echo -e "\t type: $type_errors"
echo -e "\t non_field_errors: $non_field_errors"
echo "DataError: $data_errors"
echo "AttributeError: $attribute_errors"
echo "IntegrityError: $integrity_errors"
