import 'dart:io';
void main() {
  int input = int.parse(stdin.readLineSync()!);
  for (int i = input; i >= 1; i--) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    List<int> numbers = splitted.map(int.parse).toList();
    int N = numbers[0];
    int M = numbers[1];
    int i = 1;

    while (true) {
      int result = (N * i) % M;
      if (result != 0) {
        i++;
        continue;
      } else {
        print(i);
        break;
      }
    }
  }
}