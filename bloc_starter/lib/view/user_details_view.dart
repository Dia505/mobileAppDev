import 'package:bloc_starter/core/common/user_list_view.dart';
import 'package:bloc_starter/cubit/user_cubit.dart';
import 'package:bloc_starter/model/user.dart';
import 'package:bloc_starter/view/user_output_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    String? city;

    const gap = SizedBox(height: 8);

    const items = [
      DropdownMenuItem(value: "Kathmandu", child: Text("Kathmandu")),
      DropdownMenuItem(value: "Pokhara", child: Text("Pokhara")),
      DropdownMenuItem(value: "Chitwan", child: Text("Chitwan")),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details Cubit'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(
                labelText: "Enter first name",
                border: OutlineInputBorder(),
              ),
            ),
            gap,
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(
                labelText: "Enter last name",
                border: OutlineInputBorder(),
              ),
            ),
            gap,
            DropdownButtonFormField(
              items: items,
              onChanged: (value) {
                city = value;
              },
              decoration: const InputDecoration(
                labelText: "Select a city",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (firstNameController.text.isNotEmpty &&
                      lastNameController.text.isNotEmpty &&
                      city != null) {
                    final user = User(
                      firstName: firstNameController.text.trim(),
                      lastName: lastNameController.text.trim(),
                      city: city!,
                    );

                    context.read<UserCubit>().addUser(user);

                    firstNameController.clear();
                    lastNameController.clear();
                    city = null;
                  }
                },
                child: const Text("Add user data"),
              ),
            ),
            gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserOutputView()));
                },
                child: const Text("View users"),
              ),
            ),
            const UserListView(),
          ],
        ),
      ),
    );
  }
}
