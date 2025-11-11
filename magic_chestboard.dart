import 'dart:io';
void main() {
  int T = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < T; i++) {
    int N = int.parse(stdin.readLineSync()!);
    int ans = 1;
    if (N == 1) {
      print(N);
      continue;
    }
    for (int k = 2; k <= N; k++) {
      ans = (k * k) + ans;
    }
    print(ans);
  }
}