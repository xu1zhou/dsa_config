# comparison
| item      | qps(1min)        | avg lantacy | C99 latancy|
| ----------- | ----------- |----------- |----------- |
| backend directly      | Title       | | |
| envoy         | Title       | | |
| minivoy(MEM)   | Text        | | |
| minivoy(DSA)   | Text        | | |

# minivoy proxy DSA diabled (12M/reqeust|Connection 100)
>fortio load  -c 100 -qps 0 -t 60s -httpbufferkb=13000 http://10.239.48.109:4433/cirros.img 
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

# minivoy proxy DSA enabled (12M/reqeust|Connection 100)
>fortio load  -c 100 -qps 0 -t 60s -httpbufferkb=13000 http://10.239.48.109:4433/cirros.img 
```
# target 50% 1.46223
# target 75% 1.75432
# target 90% 1.92957
# target 99% 2.73457
# target 99.9% 2.95706
Sockets used: 100 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 4331 (100.0 %)
14:27:51 W stats.go:73> Unexpected negative sigma for &{Count:4331 Min:1.2716293e+07 Max:1.2716293e+07 Sum:5.5074264983e+10 sumOfSquares:7.003404902834676e+17}: -0.08866312629877626
Response Header Sizes : count 4331 avg 261 +/- 0 min 261 max 261 sum 1130391
14:27:51 W stats.go:73> Unexpected negative sigma for &{Count:4331 Min:1.2716293e+07 Max:1.2716293e+07 Sum:5.5074264983e+10 sumOfSquares:7.003404902834676e+17}: -0.08866312629877626
Response Body/Total Sizes : count 4331 avg 12716293 +/- 0 min 1.2716293e+07 max 1.2716293e+07 sum 5.5074265e+10
All done 4331 calls (plus 100 warmup) 1406.120 ms avg, 70.7 qps
```
# envoy proxy DSA disabled (https|12M/reqeust|Connection 100)
>fortio -k load  -c 100 -qps 0 -t 60s -httpbufferkb=13000 https://10.239.48.109:4433/cirros.img 
# target 50% 0.88207
# target 75% 1.30487
# target 90% 1.72912
# target 99% 1.98367
# target 99.9% 2.35274
Sockets used: 0 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 6624 (100.0 %)
Response Header Sizes : count 6624 avg 0 +/- 0 min 0 max 0 sum 0
Response Body/Total Sizes : count 6624 avg 12716032 +/- 0 min 1.2716032e+07 max 1.2716032e+07 sum 8.4230996e+10                                                                                                      
All done 6624 calls (plus 100 warmup) 909.724 ms avg, 109.6 qps