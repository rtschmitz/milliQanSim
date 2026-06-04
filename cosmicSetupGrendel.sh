#!/bin/bash
#create local build of sim, configured to generate cosmic muons
. buildsetup.sh
cp CMakeLists.txt.default CMakeLists.txt 
cp include/defaultGrendel/* include/
cp src/defaultGrendel/* src/
cd build
cmake ../
make -j8
./MilliQan ../runMac/specmuonFullPropagated_no_vis.mac
