import 'dart:io';
void main() {
  String str = stdin.readLineSync()!;
  final splitted = str.split(' ');
  int a = int.parse(splitted[0]);
  int b = int.parse(splitted[1]);
  final List<int> numbers = [];
  for (int i = a; i <= b; i++) {
    numbers.add(i);
  }
  int lcm = LCM(a, a + 1);
  for (int i = 2; i < numbers.length; i++) {
    lcm = LCM(lcm, numbers[i]);
  }
  print(lcm);
}

int LCM(int a, int b) {
  if (a == 1 || b == 1) {
    return a * b;
  }
  List<int> aFactors = [];
  List<int> bFactors = [];
  for (int i = 2; i <= a; i++) {
    if (a % i == 0) {
      aFactors.add(i);
    }
  }
  for (int i = 2; i <= b; i++) {
    if (b % i == 0) {
      bFactors.add(i);
    }
  }
  int common = commonFactor(aFactors, bFactors);
  if (common == 0) common = 1;
  int common1 = (a / common).toInt();
  int common2 = (b / common).toInt();
  return common * common1 * common2;
}

int commonFactor(List A, List B) {
  int common = 1;
  for (int i = 0; i < A.length; i++) {
    for (int j = 0; j < B.length; j++) {
      if (A[i] == B[j]) {
        common = A[i];
      }
    }
  }
  return common;
}