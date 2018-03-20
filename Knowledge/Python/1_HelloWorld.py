import time

now = time.time()
print (now, "seconds since", time.gmtime(0)[:6])
print ("- local time:", time.localtime(now))
print ("- utc:", time.gmtime(now))

print ('How are you, Python.')
a = 10
if a > 0:
    print ("hello, a")
else:
    print ("a < 10")
