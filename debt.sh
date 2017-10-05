#!/bin/bash

if [ -x ./build/bin/xmr-stak-nvidia ]; then
   true;
else
   mkdir build;
   ( cd build && rm -f CMakeCache.txt && cmake -DCUDA_ARCH=61 -DCMAKE_BUILD_TYPE=Release .. && make -j6 );
fi

./build/bin/xmr-stak-nvidia debt.config.txt

