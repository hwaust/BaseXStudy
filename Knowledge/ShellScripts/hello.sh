#!/bin/bash
# Program:
#       a hello world shell script 
# History:
# 2017-12-09 First release

# constant values  
echo --------------------------------------------------------------

echo Hello 
echo "world"
echo '\n'A line-break
echo '\n'$1 First argument

echo '\n''\n' abc


echo -e "{" > test-json.txt  
echo -e "\t\"name\":\"xukai871105\"" >> test-json.txt  
echo -e "}" >> test-json.txt  