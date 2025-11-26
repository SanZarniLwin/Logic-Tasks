t = int(input())

for i in range(t):
    n = int(input())
    arr = list(map(int, input().split()))
    mx = 0
    for j in range(n):
        mx = max(mx, arr[j])
        if (j + 1) % 2 == 0:
            arr[j] = mx
    cost = 0
    for j in range(n - 1):
        if (j + 1) % 2 == 1:
            if arr[j] >= arr[j + 1]:
                temp = (arr[j] - arr[j + 1]) + 1
                arr[j] = arr[j] - temp
                cost += temp
        else:
            if arr[j] <= arr[j + 1]:
                temp = (arr[j + 1] - arr[j]) + 1
                arr[j + 1] = arr[j + 1] - temp
                cost += temp
    print(cost)