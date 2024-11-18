import 'dart:io';

int sumNaturalNumbers(int n) {
  int sum = 0;

  for(int i = 0; i<=n; i++) {
    sum = sum+i;
  }

  return sum;
}

void main() {
  stdout.writeln("Enter a number: ");
  int? n = int.parse(stdin.readLineSync()!);
  print(sumNaturalNumbers(n));
}