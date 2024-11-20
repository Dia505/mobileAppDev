class Employee{
  void salary(){
    print("Employee salary: \$10,000.");
  }
}

class Manager extends Employee{
  @override
  void salary(){
    print("Manager salary: \$20,000.");
  }
}

class Developer extends Employee{
  @override
  void salary(){
    print("Developer salary: \$30,000.");
  }
}

void main(){
  Manager manager = Manager();
  Developer developer = Developer();
  
  manager.salary();
  developer.salary();
}