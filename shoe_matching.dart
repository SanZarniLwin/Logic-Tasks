import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  Map<int, int> leftCount = {};
  Map<int, int> rightCount = {};
  for (int i = 0; i < N; i++) {
    List<String> str = stdin.readLineSync()!.split(' ');
    int size = int.parse(str[0]);
    String side = str[1];

    if (side == 'L') {
      leftCount[size] = (leftCount[size] ?? 0) + 1;
    } else {
      rightCount[size] = (rightCount[size] ?? 0) + 1;
    }
  }

  int pair = 0;
  leftCount.forEach((size, leftValue) {
    int rightValue = rightCount[size] ?? 0;
    pair += leftValue < rightValue ? leftValue : rightValue;
  });
  print(pair);
}