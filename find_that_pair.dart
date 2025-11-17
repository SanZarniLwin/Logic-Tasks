import 'dart:io';

void main() {
  List<String> str = stdin.readLineSync()!.split(' ');
  int n = int.parse(str[0]);
  int k = int.parse(str[1]);
  List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  Set<int> seen = {};

  for (int x in arr) {
    int needed = k - x;

    if (seen.contains(needed)) {
      print("Yes");
      return;
    }
    seen.add(x);
  }
  print("No");
}
