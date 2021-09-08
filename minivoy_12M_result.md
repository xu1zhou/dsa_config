# comparison 16K|1min|100connection
| item             | qps(1min)        | avg lantacy | C99 latancy|C90 latency|
| -----------      | -----------      |-----------  |----------- |---------- |
| backend directly | Title            |             |            |0.98243(s)101.608 ms avg, 9836.6 qps
| envoy            | Title            |  101.608 ms |            |
| minivoy(MEM)     | Text             |             |            |
| minivoy(DSA)     | Text             |             |            |



---
# 9.8
---
## 4thread 2500Conn 16K minivoy (DSA) (debug disable)
| item             | value        |
| -----------      | -----------      |
| minivoy CPU(0-1) | 60-75%           |
| fortio CPU(20-100) | <10%           |
| qps            | 50174.0(800M)            |
| Code 200     | 3012920(100%)             |
| avg latency     | 49.792 ms           |

## 4thread 2500Conn 16K minivoy (DSA) (debug disable)
| item             | value        |
| -----------      | -----------      |
| minivoy CPU(0-1) | 60-75%           |
| fortio CPU(20-100) | <10%           |
| qps            | 50079.6(800M)            |
| Code 200     | 3007388(100%)             |
| avg latency     | 49.887 ms           |




## 2thread 1500Conn 16K minivoy (DSA) (debug disable)
| item             | value        |
| -----------      | -----------      |
| minivoy CPU(0-1) | <80%           |
| fortio CPU(20-100) | <30%           |
| qps            | 29796.9(500M)            |
| Code 200     | 1789254(100%)             |
| avg latency     | 50.317 ms           |

## 2thread 1500Conn 16K minivoy (MEM) (debug disable)
| item             | value        |
| -----------      | -----------      |
| minivoy CPU(0-1) | <80%           |
| fortio CPU(20-100) | <30%           |
| qps            | 29625.2(500M)            |
| Code 200     | 1779132(100%)             |
| avg latency     | 50.608 ms           |


## 2thread 1000Conn 16K minivoy (MEM) (debug disable)

| item             | value        |
| -----------      | -----------      |
| CPU(0-1) | <50%           |
| qps            | 20770            |
| Code 200     | 1247179             |
| avg latency     | 48.120 ms           |

```
# target 75% 0.0515445
# target 90% 0.0567871
# target 99% 0.0599327
# target 99.9% 0.0689335
Sockets used: 13000 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 1247179 (100.0 %)
Response Header Sizes : count 1247179 avg 255.95189 +/- 0.4881 min 251 max 256 sum 319217824
Response Body/Total Sizes : count 1247179 avg 16639.952 +/- 0.4881 min 16635 max 16640 sum 2.07529986e+10
All done 1247179 calls (plus 1000 warmup) 48.120 ms avg, 20770.9 qps
```




---
# 9.7

## 1500Conn 16K minivoy (MEM) (debug disable)
CPU >91%
timeout =10s
error:  Closing dead socket &{{0xc007e2c580}} (err EOF at first read)
All done 1133752 calls (plus 1500 warmup) 79.411 ms avg, 18875.5 qps
latency bad than 1000conn
```
# target 75% 0.059007
# target 90% 0.064515
# target 99% 0.511307
# target 99.9% 2.90944
Sockets used: 13144 (for perfect keepalive, would be 1500)
Jitter: false
Code 200 : 1133752 (100.0 %)
Response Header Sizes : count 1133752 avg 255.95325 +/- 0.4812 min 251 max 256 sum 290187512
Response Body/Total Sizes : count 1133752 avg 16639.953 +/- 0.4812 min 16635 max 16640 sum 1.88655803e+10
All done 1133752 calls (plus 1500 warmup) 79.411 ms avg, 18875.5 qps
```

## 1000Conn 16K minivoy (MEM) (debug disable)
All done 1178710 calls (plus 1000 warmup) 50.923 ms avg, 19628.1 qps
timeout =10s
error:  Closing dead socket &{{0xc007e2c580}} (err EOF at first read)
CPU >93%
throughput: 
```
# target 75% 0.0545818
# target 90% 0.0580349
# target 99% 0.067864
# target 99.9% 0.247261
Sockets used: 12156 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 1178710 (100.0 %)
Response Header Sizes : count 1178710 avg 255.9526 +/- 0.4845 min 251 max 256 sum 301693890
Response Body/Total Sizes : count 1178710 avg 16639.953 +/- 0.4845 min 16635 max 16640 sum 1.96136785e+10
All done 1178710 calls (plus 1000 warmup) 50.923 ms avg, 19628.1 qps
```

## 1000Conn 16K minivoy (DSA) (debug disable)
CPU 92%
throughput: 266M
```
# target 90% 0.0678099
# target 99% 0.085055
# target 99.9% 0.404278
Sockets used: 10882 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 1023855 (100.0 %)
Response Header Sizes : count 1023855 avg 255.95167 +/- 0.4892 min 251 max 256 sum 262057395
Response Body/Total Sizes : count 1023855 avg 16639.952 +/- 0.4892 min 16635 max 16640 sum 1.70368977e+10
All done 1023855 calls (plus 1000 warmup) 58.621 ms avg, 17050.3 qps
```
---
# 9.6
## 2Conn 12M minivoy (MEM) (debug enable)
CPU 97%
All done 903 calls (plus 2 warmup) 66.508 ms avg, 30.1 qps
```
CPU 97%

# target 50% 0.0664414
# target 75% 0.0889815
# target 90% 0.108282
# target 99% 0.119191
# target 99.9% 0.122527
Sockets used: 10 (for perfect keepalive, would be 2)
Jitter: false
Code 200 : 903 (100.0 %)
20:25:53 W stats.go:73> Unexpected negative sigma for &{Count:903 Min:1.2716288e+07 Max:1.2716293e+07 Sum:1.1482812539e+10 sumOfSquares:1.4601880820134582e+17}: -0.42524916943521596
Response Header Sizes : count 903 avg 260.9557 +/- 0.4685 min 256 max 261 sum 235643
20:25:53 W stats.go:73> Unexpected negative sigma for &{Count:903 Min:1.2716288e+07 Max:1.2716293e+07 Sum:1.1482812539e+10 sumOfSquares:1.4601880820134582e+17}: -0.42524916943521596
Response Body/Total Sizes : count 903 avg 12716293 +/- 0 min 1.2716288e+07 max 1.2716293e+07 sum 1.14828125e+10
All done 903 calls (plus 2 warmup) 66.508 ms avg, 30.1 qps
```
## 4Conn 12M minivoy (MEM) (debug disable) 30s
All done 2473 calls (plus 4 warmup) 48.563 ms avg, 82.2 qps
CPU 99%
```
# target 50% 0.0445833
# target 75% 0.0704855
# target 90% 0.0822124
# target 99% 0.10305
# target 99.9% 0.118948
Sockets used: 27 (for perfect keepalive, would be 4)
Jitter: false
Code 200 : 2473 (100.0 %)
Response Header Sizes : count 2473 avg 260.9535 +/- 0.4799 min 256 max 261 sum 645338
Response Body/Total Sizes : count 2473 avg 12716293 +/- 1.246 min 1.2716288e+07 max 1.2716293e+07 sum 3.14473925e+10
All done 2473 calls (plus 4 warmup) 48.563 ms avg, 82.2 qps
```

## 4Conn 12M minivoy (DSA) (debug disable) 60s
All done 4541 calls (plus 4 warmup) 52.867 ms avg, 75.6 qps
CPU>95%
```
# target 50% 0.0557375
# target 75% 0.0732975
# target 90% 0.0844977
# target 99% 0.101953
# target 99.9% 0.119344
Sockets used: 48 (for perfect keepalive, would be 4)
Jitter: false
Code 200 : 4541 (100.0 %)
Response Header Sizes : count 4541 avg 260.95155 +/- 0.4898 min 256 max 261 sum 1184981
Response Body/Total Sizes : count 4541 avg 12716293 +/- 2.029 min 1.2716288e+07 max 1.2716293e+07 sum 5.77446863e+10
All done 4541 calls (plus 4 warmup) 52.867 ms avg, 75.6 qps
```


## 2Conn 100M minivoy (DSA) (debug disable) 60s
All done 404 calls (plus 2 warmup) 297.842 ms avg, 6.7 qps
CPU>95%
```
# target 50% 0.294853
# target 75% 0.331752
# target 90% 0.365143
# target 99% 0.482667
# target 99.9% 0.536498
Sockets used: 6 (for perfect keepalive, would be 2)
Jitter: false
Code 200 : 404 (100.0 %)
20:42:40 W stats.go:73> Unexpected negative sigma for &{Count:404 Min:1.04857858e+08 Max:1.04857863e+08 Sum:4.2362576632e+10 sumOfSquares:4.442049254708087e+18}: -32.95049504950495
Response Header Sizes : count 404 avg 262.9505 +/- 0.495 min 258 max 263 sum 106232
20:42:40 W stats.go:73> Unexpected negative sigma for &{Count:404 Min:1.04857858e+08 Max:1.04857863e+08 Sum:4.2362576632e+10 sumOfSquares:4.442049254708087e+18}: -32.95049504950495
Response Body/Total Sizes : count 404 avg 1.0485786e+08 +/- 0 min 1.04857858e+08 max 1.04857863e+08 sum 4.23625766e+10
All done 404 calls (plus 2 warmup) 297.842 ms avg, 6.7 qps
```
## 2Conn 100M minivoy (MEM) (debug disable) 60s
All done 404 calls (plus 2 warmup) 297.917 ms avg, 6.7 qps
CPU>98
```
# target 50% 0.292903
# target 75% 0.331855
# target 90% 0.3695
# target 99% 0.4745
# target 99.9% 0.512574
Sockets used: 6 (for perfect keepalive, would be 2)
Jitter: false
Code 200 : 404 (100.0 %)
20:45:01 W stats.go:73> Unexpected negative sigma for &{Count:404 Min:1.04857858e+08 Max:1.04857863e+08 Sum:4.2362576632e+10 sumOfSquares:4.442049254708087e+18}: -32.95049504950495
Response Header Sizes : count 404 avg 262.9505 +/- 0.495 min 258 max 263 sum 106232
20:45:01 W stats.go:73> Unexpected negative sigma for &{Count:404 Min:1.04857858e+08 Max:1.04857863e+08 Sum:4.2362576632e+10 sumOfSquares:4.442049254708087e+18}: -32.95049504950495
Response Body/Total Sizes : count 404 avg 1.0485786e+08 +/- 0 min 1.04857858e+08 max 1.04857863e+08 sum 4.23625766e+10
All done 404 calls (plus 2 warmup) 297.917 ms avg, 6.7 qps
```
## 1Conn 500M minivoy (MEM) (debug disable) 60s
to avoid error, decrese conn to 1
when connection is 1, no error msg
All done 50 calls (plus 1 warmup) 1230.967 ms avg, 0.8 qps
CPU>98
```
# target 50% 1.37143
# target 75% 1.72857
# target 90% 1.94286
# target 99% 2.22745
# target 99.9% 2.26839
Sockets used: 1 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 50 (100.0 %)
Response Header Sizes : count 50 avg 264 +/- 0 min 264 max 264 sum 13200
Response Body/Total Sizes : count 50 avg 5.2428826e+08 +/- 0 min 5.24288264e+08 max 5.24288264e+08 sum 2.62144132e+10
All done 50 calls (plus 1 warmup) 1230.967 ms avg, 0.8 qps
```
## 1Conn 500M minivoy (DSA) (debug disable) 60s
seem CPU is lower 1-2%(need check)
All done 52 calls (plus 1 warmup) 1155.330 ms avg, 0.9 qps
```
# target 50% 1.28571
# target 75% 1.65714
# target 90% 1.88
# target 99% 2.061
# target 99.9% 2.12048
Sockets used: 1 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 52 (100.0 %)
20:56:03 W stats.go:73> Unexpected negative sigma for &{Count:52 Min:5.24288264e+08 Max:5.24288264e+08 Sum:2.7262989728e+10 sumOfSquares:1.429366555594295e+19}: -39.38461538461539
Response Header Sizes : count 52 avg 264 +/- 0 min 264 max 264 sum 13728
20:56:03 W stats.go:73> Unexpected negative sigma for &{Count:52 Min:5.24288264e+08 Max:5.24288264e+08 Sum:2.7262989728e+10 sumOfSquares:1.429366555594295e+19}: -39.38461538461539
Response Body/Total Sizes : count 52 avg 5.2428826e+08 +/- 0 min 5.24288264e+08 max 5.24288264e+08 sum 2.72629897e+10
All done 52 calls (plus 1 warmup) 1155.330 ms avg, 0.9 qps
```

## 1Conn 700M minivoy (DSA) (debug disable) 60s
All done 35 calls (plus 1 warmup) 1740.944 ms avg, 0.6 qps
```
# target 50% 1.65739
# target 75% 1.97295
# target 90% 2.45226
# target 99% 2.76885
# target 99.9% 2.8005
Sockets used: 1 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 35 (100.0 %)
Response Header Sizes : count 35 avg 264 +/- 0 min 264 max 264 sum 9240
Response Body/Total Sizes : count 35 avg 7.3400346e+08 +/- 10.82 min 7.34003464e+08 max 7.34003464e+08 sum 2.56901212e+10
All done 35 calls (plus 1 warmup) 1740.944 ms avg, 0.6 qps
```

## 1Conn 700M minivoy (MEM) (debug disable) 60s
All done 28 calls (plus 1 warmup) 2186.422 ms avg, 0.5 qps
Code  -1 : 2 (7.1 %)

```
# target 50% 2.2
# target 75% 2.66667
# target 90% 2.94667
# target 99% 3.00021
# target 99.9% 3.00024
Sockets used: 3 (for perfect keepalive, would be 1)
Jitter: false
Code  -1 : 2 (7.1 %)
Code 200 : 26 (92.9 %)
Response Header Sizes : count 28 avg 264 +/- 0 min 264 max 264 sum 7392
Response Body/Total Sizes : count 28 avg 7.1468788e+08 +/- 8.102e+07 min 3.08658176e+08 max 7.34003464e+08 sum 2.00112606e+10
All done 28 calls (plus 1 warmup) 2186.422 ms avg, 0.5 qps
```
## 1Conn 700M minivoy (MEM) (debug disable) 60s (set listenfd NOblock)
All done 36 calls (plus 1 warmup) 1709.672 ms avg, 0.6 qps
```
# target 50% 1.63713
# target 75% 1.90928
# target 90% 2.48
# target 99% 3.00017
# target 99.9% 3.00025
Sockets used: 2 (for perfect keepalive, would be 1)
Jitter: false
Code  -1 : 1 (2.8 %)
Code 200 : 35 (97.2 %)
Response Header Sizes : count 36 avg 264 +/- 0 min 264 max 264 sum 9504
Response Body/Total Sizes : count 36 avg 7.2852593e+08 +/- 3.241e+07 min 5.36812273e+08 max 7.34003464e+08 sum 2.62269335e+10                                                                                                                          
All done 36 calls (plus 1 warmup) 1709.672 ms avg, 0.6 qps
```
## 1Conn 700M minivoy (DSA) (debug disable) 60s (set listenfd NOblock)
All done 38 calls (plus 1 warmup) 1615.212 ms avg, 0.6 qps
```
# target 50% 1.67006
# target 75% 1.87902
# target 90% 2.02317
# target 99% 2.41941
# target 99.9% 2.45903
Sockets used: 1 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 38 (100.0 %)
Response Header Sizes : count 38 avg 264 +/- 0 min 264 max 264 sum 10032
Response Body/Total Sizes : count 38 avg 7.3400346e+08 +/- 0 min 7.34003464e+08 max 7.34003464e+08 sum 2.78921316e+10
All done 38 calls (plus 1 warmup) 1615.212 ms avg, 0.6 qps
```


## 1Conn 800M minivoy (DSA) (debug disable) 60s (set listenfd NOblock)
All done 31 calls (plus 1 warmup) 1935.659 ms avg, 0.5 qps
```
# target 50% 1.8317
# target 75% 2.20833
# target 90% 2.98333
# target 99% 3.00115
# target 99.9% 3.00127
Sockets used: 4 (for perfect keepalive, would be 1)
Jitter: false
Code  -1 : 3 (9.7 %)
Code 200 : 28 (90.3 %)
Response Header Sizes : count 31 avg 264 +/- 0 min 264 max 264 sum 8184
Response Body/Total Sizes : count 31 avg 8.2204471e+08 +/- 5.661e+07 min 5.85629696e+08 max 8.38861064e+08 sum 2.54833861e+10
All done 31 calls (plus 1 warmup) 1935.659 ms avg, 0.5 qps
```
## 1Conn 800M minivoy (MEM) (debug disable) 60s (set listenfd NOblock)
seem latency is not steable when there is many io timeout error
```
# target 90% 3.00024
# target 99% 3.00039
# target 99.9% 3.0004
Sockets used: 7 (for perfect keepalive, would be 1)
Jitter: false
Code  -1 : 6 (25.0 %)
Code 200 : 18 (75.0 %)
Response Header Sizes : count 24 avg 264 +/- 0 min 264 max 264 sum 6336
Response Body/Total Sizes : count 24 avg 7.4969045e+08 +/- 1.743e+08 min 2.707456e+08 max 8.38861064e+08 sum 1.79925709e+10
All done 24 calls (plus 1 warmup) 2544.299 ms avg, 0.4 qps
```

9.6 end
---
# direct backend
>fortio load  -c 100 -qps 0 -t 60s -httpbufferkb=13000 http://127.0.0.1/cirros.img 
```
# target 50% 0.100617
# target 75% 0.16935
# target 90% 0.213827
# target 99% 0.37861
# target 99.9% 0.649298
Sockets used: 540 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 49351 (100.0 %)
Response Header Sizes : count 49351 avg 260.95522 +/- 0.4711 min 256 max 261 sum 12878401
Response Body/Total Sizes : count 49351 avg 12716293 +/- 0.3221 min 1.2716288e+07 max 1.2716293e+07 sum 6.27561774e+11
All done 49351 calls (plus 100 warmup) 121.627 ms avg, 821.8 qps
```

# minivoy proxy DSA diabled (1min|12M/reqeust|Connection 100)
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


# minivoy proxy DSA enabled (3min|12M/reqeust|Connection 10)
```
# target 50% 0.0988664
# target 75% 0.126387
# target 90% 0.150904
# target 99% 0.28375
# target 99.9% 3.21699
Sockets used: 148 (for perfect keepalive, would be 10)
Jitter: false
Code 200 : 13995 (100.0 %)
Response Header Sizes : count 13995 avg 260.9507 +/- 0.4941 min 256 max 261 sum 3652005
Response Body/Total Sizes : count 13995 avg 12716293 +/- 2.168 min 1.2716288e+07 max 1.2716293e+07 sum 1.7796452e+11
All done 13995 calls (plus 10 warmup) 128.891 ms avg, 76.9 qps
```


# minivoy proxy DSA enabled (1min|12M/reqeust|Connection 50)
```
# target 50% 0.670977
# target 75% 0.749843
# target 90% 0.83
# target 99% 0.997734
# target 99.9% 1.32085
Sockets used: 50 (for perfect keepalive, would be 50)
Jitter: false
Code 200 : 4449 (100.0 %)
17:24:34 W stats.go:73> Unexpected negative sigma for &{Count:4449 Min:1.2716293e+07 Max:1.2716293e+07 Sum:5.6574787557e+10 sumOfSquares:7.194215749875647e+17}: -0.3452461227242077                                                                                
Response Header Sizes : count 4449 avg 261 +/- 0 min 261 max 261 sum 1161189
17:24:34 W stats.go:73> Unexpected negative sigma for &{Count:4449 Min:1.2716293e+07 Max:1.2716293e+07 Sum:5.6574787557e+10 sumOfSquares:7.194215749875647e+17}: -0.3452461227242077                                                                                
Response Body/Total Sizes : count 4449 avg 12716293 +/- 0 min 1.2716293e+07 max 1.2716293e+07 sum 5.65747876e+10
All done 4449 calls (plus 50 warmup) 677.912 ms avg, 73.5 qps
```

# minivoy proxy DSA enabled (1min|12M/reqeust|Connection 80)
```
# target 50% 1.25973
# target 75% 1.55793
# target 90% 1.73685
# target 99% 1.8442
# target 99.9% 1.85493
Sockets used: 80 (for perfect keepalive, would be 80)
Jitter: false
Code 200 : 4503 (100.0 %)
Response Header Sizes : count 4503 avg 261 +/- 0 min 261 max 261 sum 1175283
Response Body/Total Sizes : count 4503 avg 12716293 +/- 0 min 1.2716293e+07 max 1.2716293e+07 sum 5.72614674e+10
All done 4503 calls (plus 80 warmup) 1074.850 ms avg, 74.0 qps
```

# minivoy proxy DSA enabled (1min|12M/reqeust|Connection 100)
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
# envoy proxy DSA disabled (https|12M/reqeust|Connection 100 | 1 worker)
>enable envoy with only 1 worker thread
>
>fortio -k load  -c 100 -qps 0 -t 60s -httpbufferkb=13000 https://10.239.48.109:4433/cirros.img 

```
# target 50% 1.62004
# target 75% 1.81942
# target 90% 1.93905
# target 99% 2.10322# target 99.9% 2.17164
Sockets used: 0 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 3605 (100.0 %)
Response Header Sizes : count 3605 avg 0 +/- 0 min 0 max 0 sum 0
Response Body/Total Sizes : count 3605 avg 12716032 +/- 0 min 1.2716032e+07 max 1.2716032e+07 sum 4.58412954e+10                                                                                                     
All done 3605 calls (plus 100 warmup) 1687.833 ms avg, 58.9 qps
```


# envoy proxy DSA disabled (http|12M/reqeust|Connection 100 | 1 worker)
```
# target 50% 0.876521
# target 75% 0.933044
# target 90% 0.98243
# target 99% 1.12336
# target 99.9% 1.15367
Sockets used: 100 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 6733 (100.0 %)
Response Header Sizes : count 6733 avg 265.62944 +/- 0.483 min 265 max 266 sum 1788483
Response Body/Total Sizes : count 6733 avg 12716298 +/- 0.39 min 1.2716297e+07 max 1.2716298e+07 sum 8.56188319e+10                                                                                                  
All done 6733 calls (plus 100 warmup) 899.133 ms avg, 111.0 qps
```
# envoy proxy DSA disabled (http|16K/reqeust|Connection 1000 | 1 worker)
```
# target 50% 0.100256
# target 75% 0.1139
# target 90% 0.125803
# target 99% 0.139463
# target 99.9% 0.158013
Sockets used: 1000 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 590839 (100.0 %)
Response Header Sizes : count 590839 avg 159.00301 +/- 0.05487 min 158 max 160 sum 93945179
Response Body/Total Sizes : count 590839 avg 14826.003 +/- 0.05487 min 14825 max 14827 sum 8.75978079e+09
All done 590839 calls (plus 1000 warmup) 101.608 ms avg, 9836.6 qps
```

# minivoy proxy DSA disabled (http|16K/req|Conn 1000 | 1 worker| 1min)
```
# target 50% 0.00827519
# target 75% 0.00955789
# target 90% 0.0119291
# target 99% 0.248464
# target 99.9% 3.94538
Sockets used: 12951 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 45 (0.0 %)
Code 200 : 1202340 (100.0 %)
Response Header Sizes : count 1202385 avg 154.94469 +/- 1.069 min 0 max 155 sum 186303170
Response Body/Total Sizes : count 1202385 avg 14821.396 +/- 90.68 min 0 max 14822 sum 1.7821024e+10
All done 1202385 calls (plus 1000 warmup) 50.862 ms avg, 19086.4 qps

```
# minivoy proxy DSA disabled (http|16K/req|Conn 1000 | 1 worker| 3min)
```
# target 50% 0.00878514
# target 75% 0.00964848
# target 90% 0.0105736
# target 99% 0.246554
# target 99.9% 3.9129
Sockets used: 43525 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 99 (0.0 %)
Code 200 : 4254848 (100.0 %)
Response Header Sizes : count 4254947 avg 154.94653 +/- 0.8975 min 0 max 155 sum 659289285
Response Body/Total Sizes : count 4254947 avg 14821.605 +/- 71.5 min 0 max 14822 sum 6.30651449e+10
All done 4254947 calls (plus 1000 warmup) 42.558 ms avg, 23250.4 qps
```
# minivoy proxy DSA disabled (http|16K/req|Conn 100 | 1 worker| 3min)
```
# target 50% 0.00063359
# target 75% 0.000858209
# target 90% 0.00099298
# target 99% 0.03
# target 99.9% 3.04549
Sockets used: 6000 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 590000 (100.0 %)
Response Header Sizes : count 590000 avg 154.95 +/- 0.4975 min 150 max 155 sum 91420500
Response Body/Total Sizes : count 590000 avg 14821.95 +/- 0.4975 min 14817 max 14822 sum 8.7449505e+09
All done 590000 calls (plus 100 warmup) 30.788 ms avg, 3237.2 qps
```

# minivoy proxy DSA enable (http|16K/req|Conn 500 | 1 worker| 3min)
```
# target 50% 0.000673526
# target 75% 0.000924521
# target 90% 0.00176796
# target 99% 0.119984
# target 99.9% 3.9027
Sockets used: 28440 (for perfect keepalive, would be 500)
Jitter: false
Code 200 : 2794497 (100.0 %)
Response Header Sizes : count 2794497 avg 154.95001 +/- 0.4974 min 150 max 155 sum 433007335
Response Body/Total Sizes : count 2794497 avg 14821.95 +/- 0.4974 min 14817 max 14822 sum 4.14198948e+10
All done 2794497 calls (plus 500 warmup) 32.481 ms avg, 15271.2 qps
```

# minivoy proxy DSA enable (http|16K/req|Conn 1000 | 1 worker| 1min)
```
# target 50% 0.00964157
# target 75% 0.0112269
# target 90% 0.0157816
# target 99% 0.446864
# target 99.9% 3.9513
Sockets used: 12471 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 130 (0.0 %)
Code 200 : 1145739 (100.0 %)
Response Header Sizes : count 1145869 avg 154.93291 +/- 1.723 min 0 max 155 sum 177532815
Response Body/Total Sizes : count 1145869 avg 14820.269 +/- 157.9 min 0 max 14822 sum 1.69820867e+10
All done 1145869 calls (plus 1000 warmup) 53.355 ms avg, 18188.3 qps
```

# minivoy proxy DSA enable (http|16K/req|Conn 100 | 1 worker| 3min)
```
# target 50% 0.000642723
# target 75% 0.000871424
# target 90% 0.00125219
# target 99% 0.0298515
# target 99.9% 3.05442
Sockets used: 6003 (for perfect keepalive, would be 100)
Jitter: false
Code 200 : 590300 (100.0 %)
Response Header Sizes : count 590300 avg 154.95 +/- 0.4975 min 150 max 155 sum 91466985
Response Body/Total Sizes : count 590300 avg 14821.95 +/- 0.4975 min 14817 max 14822 sum 8.74939708e+09
All done 590300 calls (plus 100 warmup) 30.826 ms avg, 3229.2 qps
```


# minivoy proxy DSA enable (http|16K/req|Conn 500 | 1 worker| 3min)
```
# target 50% 0.000781208
# target 75% 0.00133704
# target 90% 0.00250893
# target 99% 0.119926
# target 99.9% 3.9038
Sockets used: 28287 (for perfect keepalive, would be 500)
Jitter: false
Code 200 : 2778922 (100.0 %)
Response Header Sizes : count 2778922 avg 154.95 +/- 0.4975 min 150 max 155 sum 430593975
Response Body/Total Sizes : count 2778922 avg 14821.95 +/- 0.4975 min 14817 max 14822 sum 4.11890429e+10
All done 2778922 calls (plus 500 warmup) 32.663 ms avg, 15186.7 qps
```

# minivoy proxy DSA enable (http|16K/req|Conn 1000 | 1 worker| 3min)
```
target 50% 0.00936996
# target 75% 0.0105822
# target 90% 0.012727
# target 99% 0.249858
# target 99.9% 3.91312
Sockets used: 41899 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 96 (0.0 %)
Code 200 : 4091631 (100.0 %)
Response Header Sizes : count 4091727 avg 154.9465 +/- 0.9001 min 0 max 155 sum 633998780
Response Body/Total Sizes : count 4091727 avg 14821.602 +/- 71.79 min 0 max 14822 sum 6.06459507e+10
All done 4091727 calls (plus 1000 warmup) 44.270 ms avg, 22359.3 qps
```
# minivoy proxy DSA enable (http|16K/req|Conn 1500 | 1 worker| 3min)
```
# target 50% 0.0093966
# target 75% 0.0104849
# target 90% 0.012776
# target 99% 3.07639
# target 99.9% 5.90147
Sockets used: 44388 (for perfect keepalive, would be 1500)
Jitter: false
Code  -1 : 322 (0.0 %)
Code 200 : 4221458 (100.0 %)
Response Header Sizes : count 4221780 avg 154.93833 +/- 1.441 min 0 max 155 sum 654115545
Response Body/Total Sizes : count 4221780 avg 14820.82 +/- 129.4 min 0 max 14822 sum 6.257024e+10
All done 4221780 calls (plus 1500 warmup) 64.223 ms avg, 23067.8 qps
```


