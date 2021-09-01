# comparison
| item      | qps(1min)        | avg lantacy | C99 latancy|
| ----------- | ----------- |----------- |----------- |
| backend directly      | Title       | | |
| envoy         | Title       | | |
| minivoy(MEM)   | Text        | | |
| minivoy(DSA)   | Text        | | |

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


# minivoy proxy DSA enable (http|16K/req|Conn 500 | 1 worker| 1min)

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

# minivoy proxy DSA enable (http|16K/req|Conn 500 | 1 worker| 1min)


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