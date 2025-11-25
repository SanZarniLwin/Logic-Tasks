t = int(input())
for i in range(t):
    n = int(input())
    arr = list(map(int, input().split()))
    found = False
    for j in range(n - 1):
        for k in range(j + 1, n):
            x = arr[j]
            y = arr[k]
            result = y % x
            if result % 2 == 0:
                print(x, y)
                found = True
                break
        if found:
            break
    if not found:
        print(-1)
