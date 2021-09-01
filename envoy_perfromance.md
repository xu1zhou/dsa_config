# no envoy proxy
client-->nginx(http)
fortio load -k -c 1000 -qps 0 -t 60s -httpbufferkb=16000 http://127.0.0.1:8080
```
# target 50% 0.0227868
# target 75% 0.0287491
# target 90% 0.0376278
# target 99% 0.181796
# target 99.9% 0.243223
Sockets used: 20707 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 2020009 (100.0 %)
Response Header Sizes : count 2020009 avg 154.9512 +/- 0.4915 min 150 max 155 sum 313002820
Response Body/Total Sizes : count 2020009 avg 14712.951 +/- 0.4915 min 14708 max 14713 sum 2.97202938e+10
All done 2020009 calls (plus 1000 warmup) 29.707 ms avg, 33652.6 qps
```
# with envoy proxy
client -->envoy(https)--->nginx(http)
fortio load -k -c 1000 -qps 0 -t 60s -httpbufferkb=16000 https://10.239.48.109:4433
```
# target 50% 0.083584
# target 75% 0.101726
# target 90% 0.133986
# target 99% 0.40055
# target 99.9% 1.872
Sockets used: 0 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 617690 (100.0 %)
Response Header Sizes : count 617690 avg 0 +/- 0 min 0 max 0 sum 0
Response Body/Total Sizes : count 617690 avg 14545 +/- 0.000159 min 14545 max 14545 sum 8.98430105e+09
All done 617690 calls (plus 1000 warmup) 97.111 ms avg, 10277.9 qps
```