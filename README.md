## environment setup

### [optional] use vagrant to simulate if there's no servers

`vagrant up`

### install jre, logstash by apt-get

`ansible-playbook -i hosts webservers.yml`

## logstash confs

access_log /var/log/nginx/access.log;
error_log /var/log/nginx/error.log;


access_log:

log_format  main  '$time_iso8601 $remote_addr $request $host '
                '$status $request_time $bytes_sent $body_bytes_sent '
                '$upstream_addr $upstream_status $upstream_response_time '
                '"$http_user_agent"';

2016-07-19T20:24:46+08:00 218.26.54.101 POST /app/v3/bills HTTP/1.1 showmoney.cn 200 0.090 3523 3263 10.171.199.158:7000 200 0.090 "CloudCashier/4.2.0 (iPhone; iOS 8.4; Scale/2.00)"

error_log:

2015/05/21 11:35:30 [error] 30273#0: *707936 connect() failed (111: Connection refused) while connecting to upstream, client: 140.207.50.238, server: quick.ipay.so, request: "GET / HTTP/1.1", upstream: "http://127.0.0.1:6801/", host: "quick.ipay.so"
2016/08/08 14:23:23 [warn] 20813#20813: *10375486 an upstream response is buffered to a temporary file /opt/nginx/proxy_temp/8/19/0000003198 while reading upstream, client: 116.236.215.18, server: showmoney.cn, request: "GET /scripts/phantom-50ec380bb0.js HTTP/1.1", upstream: "http://10.171.199.158:6900/scripts/phantom-50ec380bb0.js", host: "showmoney.cn", referrer: "https://showmoney.cn/"