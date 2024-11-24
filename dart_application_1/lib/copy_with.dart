class Rectangle {
  final int height;
  final int width;

  Rectangle({required this.height, required this.width});

  //copyWith - allows you to create a new instance of an object while copying the current values and selectively overriding some of them
  // creates a new instance of the same class while keeping the current instance's values intact, except for the ones you want to change
  Rectangle copyWith({int? height, int? width}) {
    return Rectangle(
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  int calculateArea() {
    return height * width;
  }
}

// Person : fname,lname,age,address
class Person {
  final String fname;
  final String lname;
  final int age;
  final String address;

  Person(
      {required this.fname,
      required this.lname,
      required this.age,
      required this.address});

  Person copyWith({String? fname, String? lname, int? age, String? address}) {
    return Person(
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      age: age ?? this.age,
      address: address ?? this.address,
    );
  }

  //default implementation of toString() (from Object class) returns a less informative string, typically including the class name and instance memory address
  //overriding it allows you to provide a more meaningful representation of the object
  @override
  String toString() {
    return 'fname: $fname, lname: $lname, age: $age, address: $address';
  }
}

void main() {
  Rectangle rectangle = Rectangle(height: 10, width: 5);
  print(rectangle.calculateArea());
  Rectangle r1 = rectangle.copyWith(width: 20);
  print(r1.calculateArea());

  Person person = Person(fname: "John", lname: "Doe", age: 30, address: "123 Main St");
  print(person);  //output: fname: John, lname: Doe, age: 30, address: 123 Main St (more meaningful representation of the object due to overriding of toString())
  Person person1 = person.copyWith(fname: "Jane");
  print(person1.fname);
}