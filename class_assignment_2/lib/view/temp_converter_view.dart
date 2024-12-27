import 'package:class_assignment_2/cubit/temp_converter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TempConverterView extends StatelessWidget {
  const TempConverterView({super.key});

  @override
  Widget build(BuildContext context) {
    final tempController = TextEditingController();
    final firstUnitController = TextEditingController();
    final secondUnitController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    SizedBox gap = const SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dia Temperature Converter Cubit"),
        centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: tempController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the temperature",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the temperature";
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: firstUnitController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the unit you want to convert from",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the unit you want to convert from";
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: secondUnitController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the unit you want to convert to",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the unit you want to convert to";
                    }
                    return null;
                  },
                ),
                gap,
                BlocBuilder<TempConverterCubit, double>(
                    builder: (context, state) {
                  return Text(
                    "Temperature: $state",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  );
                }),
                gap,
                ElevatedButton(
                  onPressed: () {
                    final temp = double.tryParse(tempController.text) ?? 0;
                    final firstUnit = firstUnitController.text;
                    final secondUnit = secondUnitController.text;
                    context
                        .read<TempConverterCubit>()
                        .convertTemperature(temp, firstUnit, secondUnit);
                  },
                  child: const Text("Convert"),
                ),
              ],
            )),
      ),
    );
  }
}
