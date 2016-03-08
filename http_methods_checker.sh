http_server_host=$1
http_server_port=$2

for method in OPTIONS GET HEAD POST PUT DELETE TRACE CONNECT ; do 
    echo "\n\nTrying $method\n\n" 
    echo "$method / HTTP/1.1\nHost: $http_server_host\nConnection: close\n\n" | nc $http_server_host $http_server_port | head 
    sleep 2
done
