t = int(input())
for i in range(t):
    n, m = map(int, input().split())
    count = 0
    c = 0
    f = 0
    for j in range(n):
        a, b = map(int, input().split())
        e = a - c
        if f == 0:
            if e % 2 == 0 and b == 0:
                count += e
            elif e % 2 == 0 and b == 1:
                count += e - 1
            elif e % 2 == 1 and b == 1:
                count += e
            elif e % 2 == 1 and b == 0:
                count += e -1
        else:
            if e % 2 == 0 and b == 0:
                count += e -1
            elif e % 2 == 0 and b == 1:
                count += e
            elif e % 2 == 1 and b == 1:
                count += e -1
            elif e % 2 == 1 and b == 0:
                count += e
        c = a
        f = b
    d = m - c
    if d > 0:
        count += d
    print(count)