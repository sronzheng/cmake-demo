#!/bin/bash

ulimit -c unlimited
echo core.%e.%p > /proc/sys/kernel/core_pattern

export POS_HOME=/extp/pos
export LD_LIBRARY_PATH=/extp/pos/lib:/usr/lib/extra:/usr/lib:/lib

rm -fr /dev/bgm/BIGMEM_PLAY
rm -fr /dev/bgm/BIGMEM_PLAYLOCK
rm -fr /dev/shm/SHMEM_PLAY

rm -fr /dev/bgm/BIGMEM_LIVE
rm -fr /dev/bgm/BIGMEM_LIVELOCK
rm -fr /dev/shm/SHMEM_LIVE

#
# stage 1
#

./sysboot
./msghub&
./filemgr&

#
# stage 2
#

./camera&
./viewer&

#
# state 3
#

./recorder&
./player&
#./mcu&

