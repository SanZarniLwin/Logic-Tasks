import 'dart:io';
void main() {
  int T = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < T; i++) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    int N = int.parse(splitted[0]);
    int M = int.parse(splitted[1]);
    int total = 0;
    for (int j = 1; j <= N; j++) {
      int plus = N - j;
      total += plus;
    }
    int answer = total * M;
    print(answer);
  }
}