import 'dart:io';

class Person {
  String? name;
  int? age;
}

class Doctor extends Person {
  int? yearsOfExperience;
  String? hospitalName;

  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Years of Experience: $yearsOfExperience");
    print("Hospital name: $hospitalName");
  }
}

class Specialist extends Doctor {
  String? specialization;
  
  void display() {
    super.display();
    print("Specialization: $specialization");
  }
}

void main() {
  Specialist obj = new Specialist();

  print("Enter your name: ");
  obj.name = stdin.readLineSync()!;
  print("Enter your age: ");
  obj.age = int.parse(stdin.readLineSync()!);
  print("Enter your years of experience: ");
  obj.yearsOfExperience = int.parse(stdin.readLineSync()!);
  print("Enter your hospital name: ");
  obj.hospitalName = stdin.readLineSync()!;
  print("Enter your specialization: ");
  obj.specialization = stdin.readLineSync()!;

  print("--------------------------------------");
  print("Doctor info: ");
  obj.display();
}