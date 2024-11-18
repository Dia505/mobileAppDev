import 'dart:io';

void checkVowelConsonant(String char) {
  if(char == "a" || char =="e" || char == "i" || char == "o" || char == "u") {
    print("Vowel");
  }
  else {
    print("Consonant");
  }
}

void main() {
  stdout.writeln("Enter an alphabet: ");
  String? char = stdin.readLineSync()!;
  checkVowelConsonant(char);
}