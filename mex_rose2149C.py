t = int(input())
for i in range(t):
    n, k = map(int, input().split())
    arr = list(map(int, input().split()))
    freq = [0] * (n + 1)
    for x in arr:
        freq[x] += 1
    if k == 0:
        print(freq[0])
        continue
    missNum = 0
    countK = freq[k]
    for j in range(k):
        if freq[j] == 0:
            missNum += 1
    if missNum > 0 and countK > 0:
        ans = missNum + countK - 1
        if missNum >= countK:
            ans = ans - countK + 1
        else:
            ans = ans - missNum + 1
    else:
        ans = missNum + countK
    print(ans)
