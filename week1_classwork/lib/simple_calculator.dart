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
  String status = "continue";

  do {
    stdout.writeln("Enter two numbers: ");
    int first = int.parse(stdin.readLineSync()!);
    int second = int.parse(stdin.readLineSync()!);

    stdout.writeln("For addition: press 1");
    stdout.writeln("For subtraction: press 2");
    stdout.writeln("For multiplication: press 3");
    stdout.writeln("For division: press 4");
    stdout.writeln("To quit: type 'end'");

    String input = stdin.readLineSync()!;

    if (input == "end") {
      status = "end";
    } 
    else {
      int choice = int.parse(input);

      if(choice == 1) {
        print("Sum: ${add(first, second)}");
      }
      else if(choice == 2) {
        print("Difference: ${subtract(first, second)}");
      }
      else if(choice == 3) {
        print("Product: ${multiply(first, second)}");
      }
      else if(choice == 4) {
        print("Quotient: ${divide(first, second)}");
      }
      else {
        print("Invalid input");
      }
    }
  }

  while(status != "end");
  print("Program exited.");
}