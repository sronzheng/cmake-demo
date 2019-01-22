#!/bin/bash

ulimit -c unlimited
echo core.%e.%p > /proc/sys/kernel/core_pattern

export DEMO_HOME=/opt/demo
export LD_LIBRARY_PATH=${DEMO_HOME}/lib:/usr/lib:/lib

./hello

