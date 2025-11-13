import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  final List<String> shoes = [];
  int count = 0;
  int removeCount = 0;
  for (int i = 0; i < N; i++) {
    String str = stdin.readLineSync()!;
    shoes.add(str);
  }
  for (int i = 0; i < N; i++) {
    int possibleCount = 0;
    for (int j = 0; j < N; j++) {
      int p = sizeMatching(shoes[i], shoes[j]);
      possibleCount += p;
    }
    print(possibleCount);
    if (possibleCount == 1) {
      count += possibleCount;
    } else if (possibleCount > 1) {
      count += possibleCount;
      removeCount = possibleCount - 1;
      removeCount += removeCount;
    }
  }
  print(removeCount);
  int result = ((count - (removeCount * 2)) /2).toInt();
  print(result);
}



int sizeMatching(String shoeA, String shoeB) {
  if (shoeA[0] == shoeB[0]) {
    if (shoeA[2] != shoeB[2]) {
      return 1;
    } else {
      return 0;
    }
  } else {
    return 0;
  }
}