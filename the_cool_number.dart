import 'dart:io';
void main() {
  int T = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < T; i++) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    int R = int.parse(splitted[0]);
    int K = int.parse(splitted[1]);
    int count = 0;
    for (int i = 1; i <= R; i++) {
      String binary = i.toRadixString(2);
      int coolness = _coolnessCount(binary, "101");
      if (coolness >= K) {
        count++;
      }
    }
    print(count);
  }
}

int _coolnessCount(String binary, String pattern) {
  int count = 0;
  for (int i = 0; i <= binary.length - pattern.length; i++) {
    if (binary.substring(i, i + pattern.length) == pattern) {
      count++;
    }
  }
  return count;
}