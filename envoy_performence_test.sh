unset http_proxy;unset https_proxy

# setup DSA device queue and engin
## 1 e 1 queue
# sudo bash /home/yizhou/1e1w-s
## multiple engine queue
# minivoy/setup-dsa.sh <WQ> <ENGINE> 
minivoy/setup-dsa.sh 4 4


# // http without memcopy
# sudo ./bazel-bin/source/exe/envoy-static -c examples/tls/envoy-http-https.yaml  --concurrency 1
# // https with memcopy
# sudo ./bazel-bin/source/exe/envoy-static -c examples/tls/envoy-http-https.yaml  --concurrency 1



# check command
wget  --no-check-certificate  https://10.239.48.145:4433/cirros.img

# compile 
## minvoy
cd minivoy
### DSA diable
git clean -fd ; cmake -DCMAKE_BUILD_TYPE=Release .; make 
### DSA enable
git clean -fd ; cmake -DCMAKE_BUILD_TYPE=Release -DDML=ON .; make 

## envoy
cd envoy
bazel build --jobs=32 --local_cpu_resources 80  --verbose_failures -c opt //source/exe:envoy-static

# run
## minivoy

### 1 thread
sudo  taskset -c 0  ./src/minivoy 10.239.48.145:4433 127.0.0.1:8080 

### 2 thread
sudo  taskset -c 0-1  ./src/minivoy 10.239.48.145:4433 127.0.0.1:8080 2
## envoy
sudo ./bazel-bin/source/exe/envoy-static -c examples/tls/envoy-http-https.yaml  --concurrency 1

# test
#fortio 
# client-->nginx(http)[127.0.0.1:8080]
fortio load  -c 1000 -qps 0 -t 60s -httpbufferkb=16 https://10.239.48.145:4433
// cpu bind 
// -timeout for timeout error
taskset -c 20-100 fortio  load   -c 2500  -qps 0 -t 60s  -httpbufferkb=128 -timeout 10s  http://10.239.48.145:4433/16K

