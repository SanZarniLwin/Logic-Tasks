import 'dart:io';
void main() {

  String? _input = stdin.readLineSync();
  if (_input != null) {
    int input = int.parse(_input);
    if (input >= 1 && input <= 50) {
      String? totalText = stdin.readLineSync();
      if (totalText != null) {
        final splitted = totalText.split(' ');
        if (splitted.length == input) {
          String search = '';
          for (int i = 0; i <totalText.length; i++) {
            search = totalText[i];
            try {
              int n = int.parse(search);
              stdout.write('$n ');

            } catch (e) {
              continue ;
            }
          }
        }
      }
    }
  }

}