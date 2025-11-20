import 'dart:io';
import 'dart:math';
void main() {
  int X = int.parse(stdin.readLineSync()!);
  int limitX = sqrt(X).toInt();
  Set<int> favNum = {};
  for (int i = 1; i <= limitX; i++) {
    if (X % i == 0) {
      int b = X ~/ i;
      favNum.add(i);
      favNum.add(b);
    }
  }
  int ans = 0;
  int N = int.parse(stdin.readLineSync()!);
  List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int i = 0; i < A.length; i++) {
    int limitA = sqrt(A[i]).toInt();
    Set<int> numA = {};
    for (int j = 1; j <= limitA; j++) {
      if (A[i] % j == 0) {
        int k = A[i] ~/ j;
        numA.add(j);
        numA.add(k);
      }
    }
    Set<int> common = favNum.intersection(numA);
    List<int> commonNum = common.toList();
    if (commonNum.length == 0) {
      ans += 1;
    } else if (commonNum.length == 1) {
      if (commonNum[0] == 1) {
        ans += 1;
      }
    }
  }
  print(ans);
}