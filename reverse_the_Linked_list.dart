import 'dart:io';
void main() {
  String str = stdin.readLineSync()!;
  final splitted = str.split(' ');
  List<int> num = [];
  num = splitted.map((e) => int.parse(e)).toList();
  num = num.reversed.toList()..remove(-1);
  for (int i in num) {
    stdout.write(i.toString() + ' ');
  }
}