unset http_proxy;unset https_proxy

# enable DSA device 
bash /home/yizhou/1e1w-s

sudo ./bazel-bin/source/exe/envoy-static -c examples/http2/envoy-https-http_without_DSA.yaml 

# envoy compil
cd envoy
bazel build --jobs=32 --local_cpu_resources 80  --verbose_failures -c opt //source/exe:envoy-static

# wget command
wget  --no-check-certificate  https://10.239.48.109:4433/cirros.img

# compile 
cd minivoy
# DSA diable
git clean -fd ; cmake -DCMAKE_BUILD_TYPE=Release .; make ;sudo ./src/minivoy 10.239.48.109:4433 127.0.0.1:8080
# DSA enable
git clean -fd ; cmake -DCMAKE_BUILD_TYPE=Release -DDML=ON .; make ;sudo ./src/minivoy 10.239.48.109:4433 127.0.0.1:8080


#fortio 

fortio load  -c 1000 -qps 0 -t 60s -httpbufferkb=16 https://10.239.48.109:4433

