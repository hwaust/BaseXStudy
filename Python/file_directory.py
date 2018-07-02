#!/usr/bin/python
import os
import math
 

content = dir(math)
print(content)

def listSubDir(path, lv):
    print("├ ".rjust(lv * 4), path)
    for dir in os.listdir(path): 
        # print("sub path = {0}, isfile = {1}".format(dir, os.path.isfile(dir)))
        print("├ ".rjust((lv + 1)* 4), dir)
        if(os.path.isdir(path +  dir)):
            listSubDir(path + dir, lv + 1)
    return;
 
def traverse(f):
    fs = os.listdir(f)
    for f1 in fs:
        tmp_path = os.path.join(f,f1)
        if not os.path.isdir(tmp_path):
            print('文件: %s'%tmp_path)
        else:
            print('文件夹：%s'%tmp_path)
            traverse(tmp_path)
               


# print(os.getcwd())
# print (os.getcwd())



path = 'D:/'
# traverse(path)
#listSubDir(path, 1)

 
