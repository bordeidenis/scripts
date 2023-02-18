read status_code
curl https://httpbin.org/status/$status_code
if [ $status_code -eq 200 ]; then
	echo "PASS"
else 
	echo "FAIL"
fi