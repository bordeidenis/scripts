curl http://httpbin.org/json
curl -I http://httpbin.org/json
curl -o /dev/null -s -w "%{http_code}\n" http://httpbin.org/json
curl -o /dev/null -s -w 'Response time: %{time_total}s\n' http://httpbin.org/json
