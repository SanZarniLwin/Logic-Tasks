import 'dart:io';
void main() {
  String str = stdin.readLineSync()!;
  final splitted = str.split(' ');
  List<BigInt> N = splitted.map((n) => BigInt.parse(n)).toList();
  int resultSum = 0;
  int resultMulti = 1;

  for (int i = 0; i < N.length; i++) {
    int k = int.parse(splitted[i], radix: 2);
    resultSum += k;
    resultMulti *= k;
  }
  print(resultSum.toRadixString(2));
  print(resultMulti.toRadixString(2));
}