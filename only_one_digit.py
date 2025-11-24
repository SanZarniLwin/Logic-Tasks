t = int(input())
for i in range(t):
    x = int(input())
    y = 9
    while x > 0:
        oneInt = x % 10
        x = x // 10
        if oneInt < y:
            y = oneInt
    print(y)