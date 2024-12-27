import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleView extends StatelessWidget {
  const AreaOfCircleView({super.key});

  @override
  Widget build(BuildContext context) {
    final radiusController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    SizedBox gap = const SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
          title: const Text("Dia Area of Circle Cubit"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: radiusController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the radius",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the radius";
                    }
                    return null;
                  },
                ),
                gap,
                BlocBuilder<AreaOfCircleCubit, double>(
                    builder: (context, state) {
                  return Text(
                    "Area: $state",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  );
                }),
                gap,
                ElevatedButton(
                  onPressed: () {
                    final radius = double.tryParse(radiusController.text) ?? 0;
                    context.read<AreaOfCircleCubit>().calculateArea(radius);
                  },
                  child: const Text("Calculate"),
                ),
              ],
            )),
      ),
    );
  }
}
