import 'dart:io';

void checkPositiveNegativeZero(int number) {
  if(number > 0) {
    print("Positive number");
  }
  else if(number < 0) {
    print("Negative number");
  }
  else {
    print("Zero");
  }
}

void main() {
  stdout.writeln("Enter a number: ");
  int? number = int.parse(stdin.readLineSync()!);
  checkPositiveNegativeZero(number);
}