arr = list(map(int, input().split()))
arr.sort()
result = arr[2] - arr[0]
if result < 10:
    print('final {}'.format(arr[1]))
else:
    print('check again')