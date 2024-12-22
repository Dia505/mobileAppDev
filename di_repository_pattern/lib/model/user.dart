class User{
  final int id;
  final String firstName;
  final int age;

  User({
    required this.id,
    required this.firstName,
    required this.age,
  });

  @override 
  String toString() {
    return "id: $id, firstName: $firstName, age: $age";
  }
}