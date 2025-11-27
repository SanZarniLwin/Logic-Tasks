t = int(input())
for _ in range(t):
    n, m = map(int, input().split())
    a = list(map(int, input().split()))
    ok = True
    for i in range(m - 1):
        if a[i + 1] - a[i] != 1:
            ok = False
            break
    if not ok:
        print(1)
        continue
    start = a[0]
    last = a[-1]
    answer = n - last + 1
    print(answer)
