import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<List<int>> M = [];
  int totalCi = 0;
  int totalXi = 0;
  int minXi = 0;
  for (int i = 0; i < N; i++) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    M.add(splitted.map((s) => int.parse(s)).toList());
  }
  if (M.length == 1) {
    print(M[0][0]);
    return ;
  }
  if (M[0][1] <= M[1][1]) {
    minXi = M[0][1];
  } else {
    minXi = M[1][1];
  }
  for (int i = 0; i < M.length; i++) {
    totalCi += M[i][0];
    totalXi += M[i][1];
    for (int j = 1; j < M.length - 1; j++) {
      if (minXi <= M[j + 1][1]) {
        minXi = minXi;
      } else {
        minXi = M[j + 1][1];
      }
    }
  }
  print(totalCi - totalXi + minXi);
}