import 'dart:io';

void checkOddEven(int number) {
  if(number % 2 ==0) {
    print("Even number");
  }
  else {
    print("Odd number");
  }
}

void main() {
  stdout.writeln("Enter a number: ");
  int? number = int.parse(stdin.readLineSync()!);
  checkOddEven(number);
}