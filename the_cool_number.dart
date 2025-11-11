import 'dart:io';
void main() {
  int T = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < T; i++) {
    String str = stdin.readLineSync()!;
    final splitted = str.split(' ');
    int R = int.parse(splitted[0]);
    int K = int.parse(splitted[1]);
    int count = 0;
    for (int i = 1; i <= R; i++) {
      String binary = i.toRadixString(2);
      int coolness = _coolnessCount(binary, "101");
      if (coolness >= K) {
        count++;
      }
    }
    print(count);
  }
}

int _coolnessCount(String binary, String pattern) {
  int count = 0;
  for (int i = 0; i <= binary.length - pattern.length; i++) {
    if (binary.substring(i, i + pattern.length) == pattern) {
      count++;
    }
  }
  return count;
}

/*import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!); // number of test cases

  for (int i = 0; i < t; i++) {
    var input = stdin.readLineSync()!.split(' ');
    int R = int.parse(input[0]);
    int K = int.parse(input[1]);

    int count = 0; // count of "Very Cool" numbers

    for (int num = 1; num <= R; num++) {
      String binary = num.toRadixString(2); // convert number to binary
      int coolness = _countOccurrences(binary, '101');
      if (coolness >= K) count++;
    }

    print(count);
  }
}

// Helper function to count occurrences of a substring in a string
int _countOccurrences(String str, String pattern) {
  int count = 0;
  for (int i = 0; i <= str.length - pattern.length; i++) {
    if (str.substring(i, i + pattern.length) == pattern) {
      count++;
    }
  }
  return count;
}
*/