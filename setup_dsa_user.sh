#!/bin/bash

DSA_CONFIG_PATH=/sys/bus/dsa/devices
DSA_BIND_PATH=/sys/bus/dsa/drivers/idxd/bind
DSA_WQ_BIND_PATH=/sys/bus/dsa/drivers/dsa/bind

# DSA0 config

# set engine 0 to group 0
echo 0 > $DSA_CONFIG_PATH/dsa0/engine0.0/group_id

# setup group 0
echo 1 > $DSA_CONFIG_PATH/dsa0/wq0.0/block_on_fault
echo 0 > $DSA_CONFIG_PATH/dsa0/wq0.0/group_id
echo shared > $DSA_CONFIG_PATH/dsa0/wq0.0/mode
echo 10 > $DSA_CONFIG_PATH/dsa0/wq0.0/priority
echo 16 > $DSA_CONFIG_PATH/dsa0/wq0.0/size
echo 0 > $DSA_CONFIG_PATH/dsa0/engine0.0/group_id
echo 0 > $DSA_CONFIG_PATH/dsa0/engine0.1/group_id
echo "user" > $DSA_CONFIG_PATH/dsa0/wq0.0/type
echo "app1" > $DSA_CONFIG_PATH/dsa0/wq0.0/name
echo "15" > $DSA_CONFIG_PATH/dsa0/wq0.0/threshold
echo "Engines for group 0"
cat $DSA_CONFIG_PATH/dsa0/group0.0/engines
echo "Work queues for group 0"
cat $DSA_CONFIG_PATH/dsa0/group0.0/work_queues

# setup group 1
echo 1 > $DSA_CONFIG_PATH/dsa0/wq0.1/block_on_fault
echo 1 > $DSA_CONFIG_PATH/dsa0/wq0.1/group_id
echo dedicated > $DSA_CONFIG_PATH/dsa0/wq0.1/mode
echo 10 > $DSA_CONFIG_PATH/dsa0/wq0.1/priority
echo 16 > $DSA_CONFIG_PATH/dsa0/wq0.1/size
echo 1 > $DSA_CONFIG_PATH/dsa0/engine0.2/group_id
echo 1 > $DSA_CONFIG_PATH/dsa0/engine0.3/group_id
echo "user" > $DSA_CONFIG_PATH/dsa0/wq0.1/type
echo "app2" > $DSA_CONFIG_PATH/dsa0/wq0.1/name

echo "Engines for group 1"
cat $DSA_CONFIG_PATH/dsa0/group0.1/engines
echo "Work queues for group 1"
cat $DSA_CONFIG_PATH/dsa0/group0.1/work_queues


echo "Starting dsa0"
echo dsa0 > $DSA_BIND_PATH
echo "Start wq0.0"
echo wq0.0 > $DSA_WQ_BIND_PATH
echo "Start wq0.1"
echo wq0.1 > $DSA_WQ_BIND_PATH
