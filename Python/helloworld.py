#!/usr/bin/python
# -*- coding: UTF-8 -*-


'''
Python 3: Fibonacci series up to n
'''
def fib(n):
  a, b = 0, 1
  while a < n:
    print(a, end=' ')
    a, b = b, a+b
  print()
  

'''
Hello World example with Chinese characters.
'''
print("python: hello, world! 你好，世界");
print(1+2)


# tuple example with multiple lines
fruits = ['Banana', 'Apple', \
          'Lime', 3]
print(fruits[0]); 




"""
Read a line from console 
"""
# read from console 
# name = input('What is your name?\n')
# print('Hi, %s.' % name)


# For loop on a list
numbers = [2, 4, 6, 8]
product = 1
for number in numbers:
  product *= number
print('The product is:', product)



# function example
fib(10)


