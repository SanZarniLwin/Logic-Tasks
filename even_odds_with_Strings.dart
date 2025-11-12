import 'dart:io';
void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    String str = stdin.readLineSync()!;
    for (int j = 0; j < str.length; j+=2) {
      stdout.write(str[j]);
    }
    stdout.write(' ');
    for (int j = 1; j < str.length; j+=2) {
      stdout.write(str[j]);
    }
    print('');
  }
}