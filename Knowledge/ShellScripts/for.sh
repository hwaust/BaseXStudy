#!/bin/bash
# Program:
#       a hello world shell script 
# History:
# 2017-12-09 First release

# constant values  
for i in a b c
do
  echo xm$i.org 
done

# 
echo '\n' "Write in a single line: for((i=1;i<=3;i++));do  echo $(expr $i \* 4);done"
for((i=1;i<=3;i++));do  echo $(expr $i \* 4);done

# A nested parentheses (()) is needed. 
echo "in double-parenthesis: for (( i=0; i<3; i++)); do"
for ((i=0; i<3; i++)); do echo $i; done

for ((i=0; i<10; i++)); do
echo $i
done

echo '\n'"for i in `seq 1 4`;do"
for i in `seq 1 5`;do
echo $i
done

echo '\n'A while loop.
i=1
while(($i<3));do
  echo $i
  i=`expr $i + 1`
done

echo '\n'use for i in {1..5};
for i in {1..5}; do
  echo $i
done

for file in `ls *.sh`; do
  echo "File name: $file";  
#  echo "File content:`cat $file`"; 
done

echo "for ((i=0; i<10; i++))";

echo "Done.\n"
exit 0

echo "unreachable"