import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  Map<String, int> dit = {};
  for (int i = 0; i < N; i++) {
    List<String> str = stdin.readLineSync()!.split(' ');
    dit[str[0]] = int.parse(str[1]);
  }
  int Q = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < Q; i++) {
    String keyWord = stdin.readLineSync()!;
    if (dit.containsKey(keyWord)) {
      print(dit[keyWord]);
    }
  }
}