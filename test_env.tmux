export ENVOY_PATH=/home/yizhou/envoy
cd $ENVOY_PATH
# DSA disable
tmux new-session -s glibc_memcpy \; \
  send-keys 'cd examples/http2/;python -m http.server 8080' C-m \; \
  split-window -v \; \
  send-keys 'sudo  ./envoy-static  -c examples/http2/envoy-https-http_without_DSA.yaml  --log-level trace  2>&1 | tee http1_memcpy_10M_without_DSA.log' C-m \; \
  split-window -v \; \
  send-keys 'sleep 6;for i in {1..20};do sleep 3;sudo  curl  -k https://127.0.0.1/cirros.img.origin -o cirros.img;done' C-m \; 
# DSA enable
tmux new-session -s glibc_memcpy \; \
  send-keys 'cd examples/http2/;python -m http.server 8080' C-m \; \
  split-window -v \; \
  send-keys 'sudo  ./envoy-static  -c examples/http2/envoy-https-http_with_DSA.yaml  --log-level trace  2>&1 | tee http1_memcpy_10M_with_DSA.log' C-m \; \
  split-window -v \; \
  send-keys 'sleep 6;for i in {1..20};do sleep 3;sudo  curl  -k https://127.0.0.1/cirros.img.origin -o cirros.img;done' C-m \; 


tmux kill-session -t glibc_memcpy

grep take http1_memcpy_10M_with_DSA.log  | awk '{print $8}' > http1_memcpy_10M_with_DSA.take
grep take http1_memcpy_10M_without_DSA.log  | awk '{print $8}' > http1_memcpy_10M_without_DSA.take
