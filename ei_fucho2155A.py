t = int(input())
for i in range(t):
    n = int(input())
    if n == 2:
        print(n)
    else:
        temp = n - 2
        n = 2 + 2 * temp
        print(n)