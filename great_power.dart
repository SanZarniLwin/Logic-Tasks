import 'dart:io';

int modExp(int base, int exp, int mod) {
  int result = 1;
  base = base % mod;

  while (exp > 0) {
    if (exp % 2 == 1) {
      result = (result * base) % mod;
    }
    exp = exp ~/ 2;
    base = (base * base) % mod;
  }

  return result;
}

void main() {
  int T = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < T; i++) {
    List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int x = input[0];
    int y = input[1];
    int z = input[2];

    print(modExp(x, y, z));
  }
}
