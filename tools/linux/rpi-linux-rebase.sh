#!/bin/bash

# Setup:
# git clone -b rpi-4.1.y --depth=1000 --single-branch git@github.com:raspberrypi/linux.git raspberrypi-linux
# git remote add -t linux-4.1.y linux-stable git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
# Update:
# git fetch --all --depth=1000
# git reset --hard origin/rpi-4.1.y
# GIT_SEQUENCE_EDITOR=../rpi-linux-rebase.sh git rebase -i linux-stable/linux-4.1.y
# git format-patch --no-signature --stdout linux-stable/linux-4.1.y > ../linux-01-RPi_support.patch

TODO=$1

# Drop commits already in linux-stable/linux-4.1.y
DROP_COMMITS="b2f0132
6340f51
96dedb6
74328c7
99394cc
c0c8a90
0cd99f9
3b798b1
b3493d0
332785c
2ee2a2f
0c104bb
dd75fcd
93d8593
e98e93d
8d8314e
14416c2
63df993
c9c9a0f
3f0493e
e1d0ac7
65a3f9b
67e8cbb
7a20ec8
59795ce
0aac57a
c840da4
f476cab
f8af259
4db7e4b
c75c4ab
0cd27cf
34c400c
c68abf78
73385c1
b41262e
4ecec49
62c9799
e57d397
f4d923a
91bb2f6
80876f8
1af44f6
2c72789
fd6a8df
04730f9
cf995dd
e16aef4"

for COMMIT in $DROP_COMMITS; do
  sed -i -e "s/^pick $COMMIT /drop $COMMIT /g" $TODO
done

# Drop commits not used by openelec
DROP_COMMITS="6d4d3a9
3dc2a38
4375813
d238733
c9627bb
2d970d4
8787c05
8ae2956
85cd318
ff0b85d"

for COMMIT in $DROP_COMMITS; do
  sed -i -e "s/^pick $COMMIT /drop $COMMIT /g" $TODO
done
