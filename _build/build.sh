#!/bin/bash
#lazy impl XD
source cfg_loader.sh
cd data_temp
ALL_FILES=`ls *`
cd ../../_data
for f in $ALL_FILES ;do
  printf "\033[40;44mBuilding ${f} config...\033[0m\n"
  ruby ../hostsgen.rb -b `cat ../_build/data_temp/$f` -o ../_build/data_temp/$f -q
  printf "\033[40;46mChecking ${f} config...\033[0m "
  ruby ../hostsgen.rb check -o ../_build/data_temp/$f -q
  printf "\033[32m`cat ../_build/data_temp/$f|wc -l` Lines generated\033[0m\n"
done
BUILD_STATUS=$?
cd ..; echo "Done, your build exited with ${BUILD_STATUS}"