import 'dart:io';

void main() {
  int input = int.parse(stdin.readLineSync()!);
  for (int i = input; i >= 1 && i <= 10; i--) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    if (splitted.length == 2) {
      if (splitted[0].contains(splitted[1])) {
        print('Yes');
      } else {
        print('No');
      }
    }
  }
}