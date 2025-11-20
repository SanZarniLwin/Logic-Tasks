import 'dart:io';
import 'dart:math';
void main() {
  String b = stdin.readLineSync()!;
  int a = int.parse(b, radix: 2);
  print(a);
  if (prime(a)) {
    print('Prime');
  } else {
    print('Not Prime');
  }
}

bool prime(int a) {
  if (a < 2) return false;
  if (a == 2) return true;
  if (a % 2 == 0) return false;
  int limit = sqrt(a).toInt();
  for (int i =3; i < limit; i+=2) {
    if (a % i == 0) return false;
  }
  return true;
}