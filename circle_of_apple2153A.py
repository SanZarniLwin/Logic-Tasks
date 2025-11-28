t = int(input())
for i in range(t):
    n = int(input())
    b = list(map(int, input().split()))
    b.sort()
    eaten = 0
    last = -1
    for j in b:
        if j > last:
            eaten += 1
            last = j
    print(eaten)
