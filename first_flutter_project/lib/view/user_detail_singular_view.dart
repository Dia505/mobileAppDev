import 'package:flutter/material.dart';
import 'package:first_flutter_project/model/user.dart';

class UserDetailSingularView extends StatelessWidget {
  const UserDetailSingularView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),

      body: Column(
        children: [
          Text("First name: ${user.first_name}"),
          Text("Last name: ${user.last_name}"),
          Text("City: ${user.city}")],
      ),

    );
  }
}