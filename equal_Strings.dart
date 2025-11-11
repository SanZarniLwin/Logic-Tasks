import 'dart:io';
void main() {
  int T = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < T; i++) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    List<String> S1 = splitted[0].split('');
    List<String> S2 = splitted[1].split('');
    S1.sort();
    S2.sort();
    String sortedS1 = S1.join();
    String sortedS2 = S2.join();
    if (sortedS1 == sortedS2) {
      print("YES");
    } else {
      print("NO");
    }
  }
}