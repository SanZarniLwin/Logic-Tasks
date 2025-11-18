import 'dart:io';
import 'dart:math';

void main() {
  int T = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < T; i++) {
    int N = int.parse(stdin.readLineSync()!);
    int perfectSquares = sqrt(N).toInt();
    int result = N - perfectSquares;
    print(result);
  }
}
