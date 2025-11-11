import 'dart:io';
import 'dart:math';
void main() {
  String str = stdin.readLineSync()!;
  final splitted = str.split(' ');
  int L = int.parse(splitted[0]);
  int R = int.parse(splitted[1]);
  for (int i = L; i <= R; i++) {
    if (_prime(i)) {
      stdout.write('$i ');
    }
  }
}

bool _prime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  int limit = sqrt(n).toInt();
  for (int i = 3; i <= limit; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}