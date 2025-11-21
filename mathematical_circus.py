t = int(input())
for _ in range(t):
    n, k = map(int, input().split())
    pairs = []
    possible = True
    for i in range(1, n + 1, 2):
        a = i
        b = i + 1
        if ((a + k) * b) % 4 == 0:
            pairs.append((a, b))
        elif ((b + k) * a) % 4 == 0:
            pairs.append((b, a))
        else:
            possible = False
            break

    if not possible:
        print("NO")
    else:
        print("YES")
        for a, b in pairs:
            print(a, b)
