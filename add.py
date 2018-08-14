import time
from addfunc import add

a = 1
b = 10

while True:
	f = open("results.txt", "a+")
	result = add(a,b)
	f.write(str(result))
	print("Result is = ", result)
	a += 3
	b += 4
	time.sleep(5)
