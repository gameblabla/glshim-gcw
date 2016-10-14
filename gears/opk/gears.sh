#!/bin/bash -u
export LD_LIBRARY_PATH=$PWD/lib
export LIBGL_FB=1
export LIBGL_MIPMAP=1
export LIBGL_SHRINK=5
export LIBGL_ALPHAHACK=1
export LIBGL_BLENDHACK=1
export LIBGL_BATCH=1
export LIBGL_COPY=1
export LIBGL_NOLUMALPHA=1
export LIBGL_NPOT=1
export LD_PRELOAD=$PWD/lib/libpreload.so
./gears
