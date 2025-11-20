import 'dart:io';
void main() {
  List<int> nums = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int n = nums[0];
  int k = nums[1];
  List<int> marks = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int maxMark = 1;
  for (int num in marks) {
    if (maxMark < num) {
      maxMark = num;
    }
  }
  int maxIndex = marks.indexOf(maxMark);
  int sum = 0;
  int temp = 0;
  for (int i = 1 - k; i <= 0; i++) {
    int l = i;
    for (int j = 0; j < k; j++) {
      if (maxIndex + l > marks.length -1) {
        continue ;
      }
      int v = marks[maxIndex+l];
      temp += v;
      l++;
    }
    if (temp > sum) {
      sum = temp;
    }
    temp = 0;
  }
  print(sum);
}