import 'dart:io';

int add(int first, int second) {
  return first + second;
}

int subtract(int first, int second) {
  return first - second;
}

int multiply(int first, int second) {
  return first * second;
}

double divide(int first, int second) {
  return first/second;
}

void main() {
  String status = "y";

  do {
    stdout.writeln("For addition: press 1");
    stdout.writeln("For subtraction: press 2");
    stdout.writeln("For multiplication: press 3");
    stdout.writeln("For division: press 4");

    int operation = int.parse(stdin.readLineSync()!);

    stdout.writeln("Enter two numbers: ");
    int first = int.parse(stdin.readLineSync()!);
    int second = int.parse(stdin.readLineSync()!);

    switch(operation) {
      case 1:
      print("Sum: ${add(first, second)}");
      break;

      case 2:
      print("Difference: ${subtract(first, second)}");
      break;

      case 3:
      print("Product: ${multiply(first, second)}");
      break;

      case 4:
      print("Quotient: ${divide(first, second)}");
      break;

      default:
      print("Enter correct number to choose an operation.");
      break;
    }

    stdout.writeln("Do you want to continue?: (y/n)");

    status = stdin.readLineSync()!;
  }

  while(status != "n");
  print("Program exited.");
}