> sudo fortio load  -c 1 -qps 1  -n 1   -httpbufferkb=12716032 http://10.239.48.109:8080/cirros.img  
fortio load  -c 1 -qps 0  -t 0   -httpbufferkb=12716032 http://10.239.48.109:8080/cirros.img 
All done 1 calls (plus 0 warmup) 10.764 ms avg, 92.3 qps

-c 1 -qps 0  -n 10
Code 200 : 10 (100.0 %)
Response Header Sizes : count 10 avg 261 +/- 0 min 261 max 261 sum 2610
Response Body/Total Sizes : count 10 avg 10990596 +/- 3.493e+06 min 2.883584e+06 max 1.2716293e+07 sum 109905960
All done 10 calls (plus 0 warmup) 37.819 ms avg, 26.4 qps



-c 1 -qps 0  -n 50
Code 200 : 50 (100.0 %)
Response Header Sizes : count 50 avg 261 +/- 0 min 261 max 261 sum 13050
Response Body/Total Sizes : count 50 avg 10256505 +/- 3.907e+06 min 2.53952e+06 max 1.2716293e+07 sum 512825243
All done 50 calls (plus 0 warmup) 33.475 ms avg, 29.9 qps


-c 1 -qps 1  -n 100
```
Ended after 1m40.026212379s : 100 calls. qps=0.99974
Sleep times : count 99 avg 0.96926249 +/- 0.0244 min 0.930234627 max 1.004643246 sum 95.9569864
Aggregated Function Time : count 100 avg 0.04016697 +/- 0.02429 min 0.005016411 max 0.079055158 sum 4.01669697
Code 200 : 100 (100.0 %)
Response Header Sizes : count 100 avg 261 +/- 0 min 261 max 261 sum 26100
Response Body/Total Sizes : count 100 avg 10927778 +/- 3.413e+06 min 2.53952e+06 max 1.2716293e+07 sum 1.09277782e+09
All done 100 calls (plus 0 warmup) 40.167 ms avg, 1.0 qps
```

1 min c1 (DSA)
# target 50% 0.0251004
# target 75% 0.0634086
# target 90% 0.0690147
# target 99% 0.0788445
# target 99.9% 0.0815562
Sockets used: 493 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 1779 (100.0 %)
Response Header Sizes : count 1779 avg 261 +/- 0 min 261 max 261 sum 464319
Response Body/Total Sizes : count 1779 avg 11101953 +/- 3.083e+06 min 2.53952e+06 max 1.2716293e+07 sum 1.97503736e+10
All done 1779 calls (plus 1 warmup) 37.373 ms avg, 26.8 qps

1 min c1 (memory)
# target 50% 0.018208
# target 75% 0.0549597
# target 90% 0.0595242
# target 99% 0.0690032
# target 99.9% 0.0735672
Sockets used: 438 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 2264 (100.0 %)
Response Header Sizes : count 2264 avg 261 +/- 0 min 261 max 261 sum 590904
Response Body/Total Sizes : count 2264 avg 11461695 +/- 2.85e+06 min 2.53952e+06 max 1.2716293e+07 sum 2.59492784e+10
All done 2264 calls (plus 1 warmup) 32.242 ms avg, 31.0 qps



3 min c1
# target 50% 0.0251942
# target 75% 0.0632902
# target 90% 0.069618
# target 99% 0.0792004
# target 99.9% 0.082549
Sockets used: 1502 (for perfect keepalive, would be 1)
Jitter: false
Code 200 : 5058 (100.0 %)
Response Header Sizes : count 5058 avg 261 +/- 0 min 261 max 261 sum 1320138
Response Body/Total Sizes : count 5058 avg 10862921 +/- 3.305e+06 min 2.53952e+06 max 1.2716293e+07 sum 5.49446554e+10
All done 5058 calls (plus 1 warmup) 36.620 ms avg, 27.3 qps

1 min c2 
# target 50% 0.0390331
# target 75% 0.0669721
# target 90% 0.0874857
# target 99% 0.108683
# target 99.9% 0.124554
Sockets used: 890 (for perfect keepalive, would be 2)
Jitter: false
Code 200 : 2820 (100.0 %)
Response Header Sizes : count 2820 avg 261 +/- 0 min 261 max 261 sum 736020
Response Body/Total Sizes : count 2820 avg 10862578 +/- 3.25e+06 min 2.53952e+06 max 1.2716293e+07 sum 3.06324706e+10
All done 2820 calls (plus 2 warmup) 45.821 ms avg, 43.6 qps

3min c2(DSA)
# target 50% 0.0413747
# target 75% 0.0697514
# target 90% 0.0914783
# target 99% 0.116213
# target 99.9% 0.135908
Sockets used: 2397 (for perfect keepalive, would be 2)
Jitter: false
Code 200 : 7638 (100.0 %)
Response Header Sizes : count 7638 avg 261 +/- 0 min 261 max 261 sum 1993518
Response Body/Total Sizes : count 7638 avg 10889446 +/- 3.234e+06 min 2.53952e+06 max 1.2716293e+07 sum 8.31735893e+10
All done 7638 calls (plus 2 warmup) 48.070 ms avg, 41.6 qps

3min c2(MeM)
# target 50% 0.0297517
# target 75% 0.0602825
# target 90% 0.0713426
# target 99% 0.0831067
# target 99.9% 0.094955
Sockets used: 2344 (for perfect keepalive, would be 2)
Jitter: false
Code 200 : 10072 (100.0 %)
Response Header Sizes : count 10072 avg 261 +/- 0 min 261 max 261 sum 2628792
Response Body/Total Sizes : count 10072 avg 11159278 +/- 3.192e+06 min 2.53952e+06 max 1.2716293e+07 sum 1.12396245e+11
All done 10072 calls (plus 2 warmup) 37.483 ms avg, 53.4 qps


1min c4
# target 50% 0.0854291
# target 75% 0.113259
# target 90% 0.136927
# target 99% 0.177672
# target 99.9% 0.206342
Code 200 : 2817 (100.0 %)
Response Header Sizes : count 2817 avg 261 +/- 0 min 261 max 261 sum 735237
Response Body/Total Sizes : count 2817 avg 11604015 +/- 2.625e+06 min 2.53952e+06 max 1.2716293e+07 sum 3.26885097e+10
All done 2817 calls (plus 4 warmup) 87.490 ms avg, 45.7 qps

3min c4 (DSA)
# target 50% 0.0908454
# target 75% 0.118434
# target 90% 0.142929
# target 99% 0.186212
# target 99.9% 0.238687
Sockets used: 1478 (for perfect keepalive, would be 4)
Jitter: false
Code 200 : 7788 (100.0 %)
Response Header Sizes : count 7788 avg 261 +/- 0 min 261 max 261 sum 2032668
Response Body/Total Sizes : count 7788 avg 11693449 +/- 2.522e+06 min 2.53952e+06 max 1.2716293e+07 sum 9.10685775e+10
All done 7788 calls (plus 4 warmup) 92.262 ms avg, 43.4 qps

3min c4( MEM)
# target 50% 0.0489938
# target 75% 0.0722432
# target 90% 0.090434
# target 99% 0.123848
# target 99.9% 0.145866
Sockets used: 4057 (for perfect keepalive, would be 4)
Jitter: false
Code  -1 : 1 (0.0 %)
Code 200 : 14013 (100.0 %)
Response Header Sizes : count 14014 avg 261 +/- 0 min 261 max 261 sum 3657654
Response Body/Total Sizes : count 14014 avg 10891447 +/- 3.346e+06 min 2.53952e+06 max 1.2716293e+07 sum 1.52632743e+11
All done 14014 calls (plus 4 warmup) 52.589 ms avg, 76.0 qps



1 min c8
# target 50% 0.17158
# target 75% 0.203741
# target 90% 0.238022
# target 99% 0.298234
# target 99.9% 0.347738
Sockets used: 214 (for perfect keepalive, would be 8)
Jitter: false
Code 200 : 3131 (100.0 %)
Response Header Sizes : count 3131 avg 261 +/- 0 min 261 max 261 sum 817191
Response Body/Total Sizes : count 3131 avg 12375040 +/- 1.55e+06 min 2.53952e+06 max 1.2716293e+07 sum 3.87462488e+10
All done 3131 calls (plus 8 warmup) 172.491 ms avg, 46.3 qps

3min c8(DSA)
# target 50% 0.17169
# target 75% 0.207529
# target 90% 0.24013
# target 99% 0.301045
# target 99.9% 0.353307
Sockets used: 546 (for perfect keepalive, would be 8)
Jitter: false
Code 200 : 8537 (100.0 %)
Response Header Sizes : count 8537 avg 261 +/- 0 min 261 max 261 sum 2228157
Response Body/Total Sizes : count 8537 avg 12418973 +/- 1.4e+06 min 2.53952e+06 max 1.2716293e+07 sum 1.06020769e+11
All done 8537 calls (plus 8 warmup) 173.757 ms avg, 46.0 qps

3min c8(MEM)
# target 50% 0.0958596
# target 75% 0.12969
# target 90% 0.160967
# target 99% 0.231975
# target 99.9% 0.278768
Sockets used: 7450 (for perfect keepalive, would be 8)
Jitter: false
Code 200 : 19013 (100.0 %)
Response Header Sizes : count 19013 avg 261 +/- 0 min 261 max 261 sum 4962393
Response Body/Total Sizes : count 19013 avg 10421954 +/- 3.466e+06 min 2.53952e+06 max 1.2716293e+07 sum 1.98152604e+11
All done 19013 calls (plus 8 warmup) 102.149 ms avg, 78.3 qps

3min c16
# target 50% 0.349172
# target 75% 0.397422
# target 90% 0.448508
# target 99% 0.635133
# target 99.9% 3.5536
Sockets used: 155 (for perfect keepalive, would be 16)
Jitter: false
Code 200 : 8946 (100.0 %)
Response Header Sizes : count 8946 avg 260.96758 +/- 0.4013 min 256 max 261 sum 2334616
Response Body/Total Sizes : count 8946 avg 12687504 +/- 4.045e+05 min 2.53952e+06 max 1.2716293e+07 sum 1.1350241e+11
All done 8946 calls (plus 16 warmup) 366.014 ms avg, 43.7 qps


1min c1000 (MEM)
# target 50% 0.00964399
# target 75% 0.0109565
# target 90% 0.0135784
# target 99% 0.199765
# target 99.9% 3.92937
Sockets used: 19747 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 109 (0.0 %)
Code 200 : 1875651 (100.0 %)
Response Header Sizes : count 1875760 avg 154.94131 +/- 1.281 min 0 max 155 sum 290632710
Response Body/Total Sizes : count 1875760 avg 14712.095 +/- 112.2 min 0 max 14713 sum 2.759636e+10
All done 1875760 calls (plus 1000 warmup) 48.574 ms avg, 20171.7 qps

3min c1000 (MEM)
# target 50% 0.00953233
# target 75% 0.0107023
# target 90% 0.0128852
# target 99% 0.380333
# target 99.9% 3.91329
Sockets used: 43807 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 138 (0.0 %)
Code 200 : 4279552 (100.0 %)
Response Header Sizes : count 4279690 avg 154.94515 +/- 1.01 min 0 max 155 sum 663117200
Response Body/Total Sizes : count 4279690 avg 14712.476 +/- 83.55 min 0 max 14713 sum 6.29648352e+10
All done 4279690 calls (plus 1000 warmup) 44.940 ms avg, 22031.9 qps


3min c1000(DSA)
# target 50% 0.0156438
# target 75% 0.017397
# target 90% 0.0217002
# target 99% 2.40187
# target 99.9% 5.89699
Sockets used: 26303 (for perfect keepalive, would be 1000)
Jitter: false
Code  -1 : 471 (0.0 %)
Code 200 : 2494057 (100.0 %)
Response Header Sizes : count 2494528 avg 154.92096 +/- 2.186 min 0 max 155 sum 386454675
Response Body/Total Sizes : count 2494528 avg 14710.172 +/- 202.2 min 0 max 14713 sum 3.66949365e+10
All done 2494528 calls (plus 1000 warmup) 74.956 ms avg, 13177.0 qps

3min c1000(backend)
# target 50% 0.0226959
# target 75% 0.0281433
# target 90% 0.0342328
# target 99% 0.0677548
# target 99.9% 0.167422
Sockets used: 99480 (for perfect keepalive, would be 1000)
Jitter: false
Code 200 : 9897179 (100.0 %)
Response Header Sizes : count 9897179 avg 154.95024 +/- 0.4963 min 150 max 155 sum 1.53357029e+09
Response Body/Total Sizes : count 9897179 avg 14712.95 +/- 0.4963 min 14708 max 14713 sum 1.45616702e+11
All done 9897179 calls (plus 1000 warmup) 24.070 ms avg, 41542.5 qps