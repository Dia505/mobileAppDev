import 'package:di_repository_pattern/model/user.dart';

class LocalDataSource{
  List<User> userList = [
    User(
      id: 1,
      firstName: "John",
      age: 45
    ),
    User(
      id: 2,
      firstName: "Henry",
      age: 30
    )
  ];

  //Local database (Hive, ObjectBox)
  bool addUser(User user) {
    userList.add(user);
    return true;
  }

  List<User> getAllUser() {
    return userList;
  }
}