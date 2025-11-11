import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<List<int>> books = [];
  for (int i = 0; i < N; i++) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ').map((e) => int.parse(e)).toList();
    books.add(splitted);
  }
  int minBooks = 0;
  int maxHappy = 0;
  for (int i = 0; i < N; i++) {
    int possibleBooks = books[i][0];
    int happyCount = 0;

    for (int j = 0; j < N; j++) {

      if (possibleBooks >= books[j][0] && possibleBooks <= books[j][1]) {
        happyCount++;
      }

    }

    if (
      happyCount > maxHappy ||
      happyCount == maxHappy && possibleBooks < minBooks
    ) {
      minBooks = possibleBooks;
      maxHappy = happyCount;
    }
  }
  print('$minBooks $maxHappy');
}