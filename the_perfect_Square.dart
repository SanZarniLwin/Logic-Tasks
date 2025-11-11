import 'dart:io';
import 'dart:math';
void main() {
  int T = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= T; i++) {
    int N = int.parse(stdin.readLineSync()!);
    int sq = sqrt(N).toInt();
    int gsq = sq + 1;
    int psq = sq * sq;
    int pgsq = gsq * gsq;
    int result1 = N - psq;
    int result2 = pgsq - N;
    if (result1 < result2) {
      print(sq);
    } else {
      print(gsq);
    }
  }
}