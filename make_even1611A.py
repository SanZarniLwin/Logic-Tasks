t = int(input())
for i in range(t):
    n = int(input())
    last = n % 10
    if last % 2 == 0:
        print(0)
        continue
    temp = n
    while temp >= 10:
        temp = temp // 10
    first = temp
    if first % 2 == 0:
        print(1)
        continue
    temp = n // 10
    even = False
    while temp > 10:
        digit = temp % 10
        if digit % 2 == 0:
            even = True
            break
        temp = temp // 10
    if even:
        print(2)
    else:
        print(-1)