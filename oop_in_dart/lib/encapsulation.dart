class Employee {
  //private variable denoted by underscore
  int? _id;
  String? _name;
  String? _department;
  String? _email;

  //Getter method to retrieve private properties
  int getId() {
    return _id!;
  }

  String getName() {
    return _name!;
  }

  String getDepartment() {
    return _department!;
  }

  String getEmail() {
    return _email!;
  }

  //Setter methods to update private properties
  void setId(int id) {
    this._id = id;
  } 

  void setName(String name) {
    this._name = name;
  }

  void setDepartment(String department) {
    this._department = department;
  }

  void setEmail(String email) {
    this._email = email;
  }
}

void main() {
  Employee obj = new Employee();

  obj.setId(101);
  obj.setName("John Smith");
  obj.setDepartment("Accounts");
  obj.setEmail("johnsmith1998@gmail.com");

  print("Employee details: ");
  print("Id: ${obj.getId()}");
  print("Name: ${obj.getName()}");
  print("Department: ${obj.getDepartment()}");
  print("Email: ${obj.getEmail()}");
}