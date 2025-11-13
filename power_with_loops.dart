import 'dart:io';
void main() {
  String str = stdin.readLineSync()!;
  final M = str.split(' ');
  print(power(int.parse(M[0]), int.parse(M[1])));
}

int power(int base, int exp) {
  int result = 1;
  if (exp == 0) {
    return result;
  }
  for (int i = 1; i <= exp; i++) {
    result = result * base;
  }
  return result;
}