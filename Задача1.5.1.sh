#!/bin/bash

echo "Today's date::without format $(date)"
echo "Today's date::format [dd/mm/yyyy] $(date +"%D")"
echo "Today's date::format [Month,dd,yyyy] $(date +"%B,%d,%Y")"
echo "Today's date::format [mm/dd/yy] $(date +"%d/%m/%y")"
echo "Today's date::format [Mon-dd-yyyy] $(date +"%b-%d-%Y")"
echo "Today's date::format [yyyy-mm-dd_hh:mm:ss] $(date "+%Y-%m-%d_%H:%M:%S")"