import 'dart:io';

class Shape {
  double? length;
  double? breadth;
}

class Rectangle extends Shape {
  double calculateArea() {
    return length! * breadth!;
  }
}

class Triangle extends Shape {
  double calculateArea() {
    return 0.5 * length! * breadth!;
  }
}

void main() {
  Rectangle r = new Rectangle();
  Triangle t = new Triangle();

  print("Enter length of rectangle: ");
  r.length = double.parse(stdin.readLineSync()!);
  print("Enter breadth of rectangle: ");
  r.breadth = double.parse(stdin.readLineSync()!);
  print("Area of rectangle: ${r.calculateArea()}");

  print("Enter height of triangle: ");
  t.length = double.parse(stdin.readLineSync()!);
  print("Enter base of triangle: ");
  t.breadth = double.parse(stdin.readLineSync()!);
  print("Area of triangle: ${t.calculateArea()}");
}