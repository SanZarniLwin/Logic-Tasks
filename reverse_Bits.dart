import 'dart:io';
void main() {
    int T = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < T; i++) {
        int N = int.parse(stdin.readLineSync()!);
        String binaryNum = N.toRadixString(2);
        String reverseBinary = binaryNum.split('').reversed.join();
        int answer = int.parse(reverseBinary, radix: 2);
        print(answer);
    }
}