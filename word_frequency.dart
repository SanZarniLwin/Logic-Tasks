import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<String> words = stdin.readLineSync()!.split(' ');
  print(words);
  Set<String> word = {};
  word.addAll(words);
  print(word);
  int count = 0;
  Map<int, String> w = {}; 
  for (int i = 0; i < word.length; i++) {
    for (int j = 0; j < words.length; j++) {
      if (words[j] == word.elementAt(i)) {
        count++;
      }
    }
    w[count] = word.elementAt(i);
    count = 0;
  }
  print(w);
}