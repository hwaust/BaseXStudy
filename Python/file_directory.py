#!/usr/bin/python
import os
import math
 

# print(dir(math))

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

inpath = r"C:/Users/hao/source.txt"
print("dir name: " + os.path.dirname(inpath))
print("basename: " + os.path.basename(inpath))
print("exists: ", os.path.exists(inpath))

'''
newpath = "d:/a/b/c/d/e";
os.makedirs(newpath)
print(os.path.exists(newpath))
'''

print("os.path.abspath('.')", os.path.abspath('.'))
print("os.path.split('D:/pythontest/ostest/Hello.py')", os.path.split('D:\\pythontest\\ostest\\Hello.py'))

# Reference
"""
Executing a shell command
os.system()    

Get the users environment 
os.environ()   

#Returns the current working directory.
os.getcwd()   

Return the real group id of the current process.
os.getgid()       

Return the current process’s user id.
os.getuid()    

Returns the real process ID of the current process.
os.getpid()     

Set the current numeric umask and return the previous umask.
os.umask(mask)   

Return information identifying the current operating system.
os.uname()     

Change the root directory of the current process to path.
os.chroot(path)   

Return a list of the entries in the directory given by path.
os.listdir(path) 

Create a directory named path with numeric mode mode.
os.mkdir(path)    

Recursive directory creation function.
os.makedirs(path)  

Remove (delete) the file path.
os.remove(path)    

Remove directories recursively.
os.removedirs(path) 

Rename the file or directory src to dst.
os.rename(src, dst)  

Remove (delete) the directory path.
os.rmdir(path)    
"""
