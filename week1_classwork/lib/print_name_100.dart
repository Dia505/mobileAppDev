import 'dart:io';

void printName(String name) {
  for(int i = 0; i<=100; i++) {
    print(name);
  }
}

void main() {
  stdout.writeln("Enter your name: ");
  String? name = stdin.readLineSync()!;
  printName(name);
}