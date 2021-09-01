# minivoy proxy DSA diabled (12M per reqeust)
fortio load  -c 1 -qps 0 -n 1 -httpbufferkb=13000 http://10.239.48.109:4433/cirros.img
```
# target 50% 0.9878
# target 75% 1.46861
# target 90% 1.79391
# target 99% 1.98909
# target 99.9% 2.52817
Sockets used: 100 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 5838 (100.0 %)
Response Header Sizes : count 5838 avg 261 +/- 0 min 261 max 261 sum 1523718
Response Body/Total Sizes : count 5838 avg 12716293 +/- 0 min 1.2716293e+07 max 1.2716293e+07 sum 7.42377185e+10
All done 5838 calls (plus 100 warmup) 1035.890 ms avg, 95.7 qps
```