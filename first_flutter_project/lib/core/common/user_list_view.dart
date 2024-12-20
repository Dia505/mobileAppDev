import 'package:first_flutter_project/model/user.dart';
import 'package:flutter/material.dart';

class UserListView extends StatelessWidget {
  const UserListView({
    super.key,
    required this.userList,
  });

  final List<User> userList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),

        itemCount: userList.length,
        itemBuilder: (context, index) {
          final user = userList[index];
    
          return ListTile(
            leading: const Icon(Icons.wysiwyg),
            title: Text(userList[index].first_name + " " + userList[index].last_name),
            subtitle: Text(userList[index].city),
            trailing: IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.delete)),
            onTap: () {
              Navigator.pushNamed(context, "/details", arguments: user);
            },
          );
        },
      ),
    );
  }
}