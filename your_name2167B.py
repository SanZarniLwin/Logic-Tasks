q = int(input())
for i in range(q):
    n = int(input())
    s, t = input().split()
    if len(s) == n and len(t) == n:
        if sorted(s) == sorted(t):
            print("YES")
        else:
            print("NO")