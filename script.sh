#!/bin/bash


log=$(date +"%Y-%m-%d").log


if [[ $(date +"%H:%M") == "09:55" ]]; then
    touch $log

fi
(crontab -l 2>/dev/null; echo "55 9 * * * /path/to/script.sh") | crontab -
# у меня эта команда не работала при запуске скрипта, поэтому я добавлял ее вручную через консоль

log_errors=$(date '+%Y-%m-%d').log


grep "ERROR" "$log_errors" > errors.txt

# по умолчанию эта команда не будет работать. необходимо в консоли написать: sudo apt-get install mailutils
mailx -s "Errors Report" -a "$log_errors" bordei.den99@gmail.com