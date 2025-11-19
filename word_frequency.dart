import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<String> words = stdin.readLineSync()!.split(' ');
  List<String> setWord = [];
  Map<String, int> a = {};
  for (int i = 0; i < words.length; i++) {
    if (a.containsKey(words[i])) {
      a[words[i]] = a[words[i]]! + 1;
    } else {
      a[words[i]] = 1;
      setWord.add(words[i]);
    }
  }
  for (int i = 0; i < setWord.length; i++) {
    for (int j = i + 1; j < setWord.length; j++) {
      if (a[setWord[i]]! < a[setWord[j]]!) {
        String temp = setWord[i];
        setWord[i] = setWord[j];
        setWord[j] = temp;
      }
    }
  }
  for (int i = 0; i < setWord.length; i++) {
    stdout.write('${setWord[i]} ');
  }
}