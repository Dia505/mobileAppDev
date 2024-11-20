import 'dart:io';

class Person {
  String? name;
  int? age;

  void printPersonalInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Student extends Person {
  String? schoolName;
  String? schoolAddress;

  void printSchoolInfo() {
    print("School name: $schoolName");
    print("School address: $schoolAddress");
  }
}

void main() {
  Student obj = new Student();

  print("Enter your name: ");
  obj.name = stdin.readLineSync()!;
  print("Enter your age: ");
  obj.age = int.parse(stdin.readLineSync()!);
  print("Enter your school name: ");
  obj.schoolName = stdin.readLineSync()!;
  print("Enter your school address: ");
  obj.schoolAddress = stdin.readLineSync()!;

  print("--------------------------------------");
  print("Student info: ");
  obj.printPersonalInfo();
  obj.printSchoolInfo();
}