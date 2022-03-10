#!/bin/bash
# mode: minivoy/ envoy
# thread: N

echo "$@"
while getopts ":m:t:" opt; do #不打印错误信息, -a -c需要参数 -b 不需要传参  
  case $opt in
    a)
      echo "-a arg:$OPTARG index:$OPTIND" #$OPTIND指的下一个选项的index
      ;;
    b)
      echo "-b arg:$OPTARG index:$OPTIND"
      ;;
    c) 
      echo "-c arg:$OPTARG index:$OPTIND"
      ;;
    :)
      echo "Option -$OPTARG requires an argument." 
      exit 1
      ;;
    ?) #当有不认识的选项的时候arg为?
      echo "Invalid option: -$OPTARG index:$OPTIND"
      ;;
    
  esac
done
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
