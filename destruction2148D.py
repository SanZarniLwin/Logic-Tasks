t = int(input())
for i in range(t):
    n = int(input())
    arr = list(map(int, input().split()))
    total = sum(arr)
    odd = []
    for j in range(len(arr)):
        if arr[j] % 2 == 1:
            odd.append(arr[j])
    odd.sort()
    if len(odd) == 0:
        print(0)
        continue
    m = len(odd) // 2
    for k in range(m):
        total -= odd[k]
    print(total)
