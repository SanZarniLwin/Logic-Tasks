t = int(input())
for i in range(t):
    a, b, c, d = map(int, input().split())
    if a == b and c == d and a == c:
        print('YES')
    else:
        print('NO')