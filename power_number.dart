import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  for (int num in A) {
    if (isPowerNumber(num)) {
      stdout.write("Yes ");
    } else {
      stdout.write("No ");
    }
  }
}

bool isPowerNumber(int num) {
  for (int x = 1; x <= 15; x++) {
    int value = 1;
    for (int i = 0; i < x; i++) {
      value *= x;
    }

    if (value == num) return true;
    if (value > num) break;
  }
  return false;
}
