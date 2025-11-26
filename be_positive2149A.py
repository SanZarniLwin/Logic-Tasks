t = int(input())
for i in range(t):
    n = int(input())
    arr = list(map(int, input().split()))
    zero = arr.count(0)
    neg = arr.count(-1)
    ans = zero + 2 *(neg % 2)
    print(ans)
