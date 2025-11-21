x = int(input())
count = 0
if x > 5:
    count = int(x/5)
    if x % 5 == 0:
        count += 0
    else:
        count += 1
    print(count)
else:
    print(1)