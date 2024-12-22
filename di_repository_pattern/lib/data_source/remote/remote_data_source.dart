import 'package:di_repository_pattern/model/user.dart';

class RemoteDataSource{
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
    ),
    User(
      id: 3,
      firstName: "Sam",
      age: 26
    )
  ];

  //API call (using node, mongodb)
  bool addUser(User user) {
    userList.add(user);
    return true;
  }

  List<User> getAllUser() {
    return userList;
  }
}