k, n, w = map(int, input().split())
totalprice = 0
for i in range(1, w+1):
    totalprice = totalprice + (i * k)
result = totalprice - n
if result > 0:
    print(result)
else:
    print(0)