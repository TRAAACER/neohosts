#!/bin/bash
export HOSTSGEN_EVAL="@host + ' = ' + @loc"
export HOSTSGEN_HEAD="../_build/surge.head"
cd ../_data
ruby ../hostsgen.rb -o ../_build/data_temp/surge
cd ../_build