#!/bin/bash -u
export LD_LIBRARY_PATH=$PWD/lib
export LIBGL_FB=1
export LD_PRELOAD=$PWD/lib/libpreload.so
./gears
