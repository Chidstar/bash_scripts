import time
from addfunc import add
a = 3
 b = 7
while True:
  print ("The result is = ", add(a,b))
  a += 3
  b += 2
  time.sleep(5)
