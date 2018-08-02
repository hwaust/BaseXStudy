#!/usr/bin/python
import random

# generate a list containing 0--9
list = list(range(0,10))
# shuffle
random.shuffle(list)
# obtain the first 4 element in list
target=list[:4]  

"""
import numpy as np
a = np.arange(0,100,10)
print(a) # output is: [0 10 20 30 40 50 60 70 80 90]
"""

count = 0 
while True:
  instr = str(input("please input your guess:"))
  if(instr == "exit"): 
    print("Answer: " + str(target))
    break

  if(len(instr) != 4):
     print("Only 4 numbers input is allowed.")
     continue
  
  if(not str.isdecimal(instr)):
    print("Error: non-decimal character existed.")
    continue

  if(len(set(instr)) != 4):
    print("Repeated numbers are not allowed.")
    continue

  count+=1
  if(len(instr) != 4):
    print("Error input: the lenght of input is not 4.")
    continue
  A = B = 0
  
  for i in range(4):
    A += 1 if int(instr[i]) == target[i] else 0
    B += 1 if int(instr[i]) in target else 0
  print("{0}: {1}A{2}B".format(count, A, B - A))