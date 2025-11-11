import 'dart:io';
void main() {
  String P = stdin.readLineSync()!;
  String Q = stdin.readLineSync()!;
  if (P.contains(Q)) {
    print(P.indexOf(Q));
  } else {
    print('-1');
  }
}