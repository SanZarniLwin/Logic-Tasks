import 'dart:io';
void main() {
  int input = int.parse(stdin.readLineSync()!);
  for (int i = input; i<=10 && i >= 1; i--) {
    int total = int.parse(stdin.readLineSync()!);
    if (isPowerOfTwoDivision(total)) {
      total -= 1;
      print(total);
    }
  }
}

bool isPowerOfTwoDivision(int n) {
  if (n <= 0) {
    return false;
  }
  while (n > 1) {
    if (n % 2 != 0) {
      return false;
    }
    n ~/= 2;
  }
  return true;
}

