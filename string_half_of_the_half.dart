import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    String str = stdin.readLineSync()!;
    int half = (str.length / 2).toInt();
    String firstHalf = str.substring(0, half);
    String result = '';
    for (int j = 0; j < firstHalf.length; j += 2) {
      result += firstHalf[j];
    }
    print(result);
    print(str);
  }
}
