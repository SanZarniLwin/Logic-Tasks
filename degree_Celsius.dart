import 'dart:io';
void main() {
  int input = int.parse(stdin.readLineSync()!);
  if (input >= 0 && input <= 1000) {
    int fahrenheit = (input * 9 /5 + 32).toInt();
    print(fahrenheit);
  }
}