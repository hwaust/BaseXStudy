#!bin/bash

scores=$1;

echo "Shell logic expressions:"
echo "if [ condition ]; then" 
echo "  statement1;" 
echo "else"
echo "  statement2;"
echo "fi;"
echo "where condition = a cmp b"
echo "where cmp in (-eq, -ne, -gt, -ge, -lt, -le)"
echo "about cmp"
echo "a -eq b　 =>  a == b"
echo "a -ne b　 =>  a != b"
echo "a -gt b　 =>  a >  b"
echo "a -ge b　 =>  a >= b"
echo "a -lt b　 =>  a <  b"
echo "a -le b　 =>  a <= b"
echo "Note:"
echo "1) A space must be placed betwee if and ["
echo "2) Spaced must be placed in between [ ] and contition"
echo "3) No space betwee ] and ;"

if [[ $scores -gt 90 ]]; then
    echo "very good!";
elif [[ $scores -gt 80 ]]; then
    echo "good!";
elif [[ $scores -gt 60 ]]; then
    echo "pass!";
else
    echo "no pass!";
fi;

if [[ $1 -lt 50 ]]; then
  echo "less than";
else
   echo "not";
fi;