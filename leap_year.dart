
import 'dart:io';

String isLeapYear(int year) {
  if (year % 400 == 0) {
    return "Yes";
  } else if (year % 100 == 0) {
    return "No";
  } else if (year % 4 == 0) {
    return "Yes";
  } else {
    return "No";
  }
}

void main() {
  try {
    int T = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < T; i++) {
      int year = int.parse(stdin.readLineSync()!);
      print(isLeapYear(year));
    }
  } catch (e) {
    print("Invalid input. Please enter valid integers.");
  }
}