abstract class Shape {
  String name;
  Shape(this.name);

  double calculateArea();

  void displayArea() {
    print("The area of $name is ${calculateArea()}");
  }
}

class Circle extends Shape {
  double radius;
  //super: calls the Parent Constructor to initialize properties and methods defined there (V.V.I)
  Circle(this.radius) : super("Circle");

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Triangle extends Shape {
  double base;
  double height;
  Triangle(this.base, this.height) : super("Triangle");

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}

void main() {
  Circle c = new Circle(7.5);
  Triangle t = new Triangle(3.2, 8.6);

  c.displayArea();
  t.displayArea();
} 