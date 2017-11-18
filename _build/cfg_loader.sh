#!/bin/bash
HOSTS_FILES=`awk  -F ' ' '{print $1}' mod_set.cfg`

rm -rf data_temp;mkdir data_temp;cd data_temp
for f in $HOSTS_FILES ;do
  touch $f;
  fields=`cat ../mod_set.cfg|grep -e "$f .*"`
  for l in $fields ;do
    echo -n "-b $l " >> $f
  done
done
cd ..