import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestView extends StatelessWidget {
  const SimpleInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    final principalController = TextEditingController();
    final timeController = TextEditingController();
    final rateController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    SizedBox gap = const SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dia Simple Interest Cubit"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: principalController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the principal amount",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the principal amount";
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: rateController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the rate",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the rate";
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: timeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Enter the time (in years)",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the time (in years)";
                    }
                    return null;
                  },
                ),
                gap,
                BlocBuilder<SimpleInterestCubit, double>(
                    builder: (context, state) {
                  return Text(
                    "SI: $state",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  );
                }),
                gap,
                ElevatedButton(
                  onPressed: () {
                    final principal =
                        double.tryParse(principalController.text) ?? 0;
                    final time = double.tryParse(timeController.text) ?? 0;
                    final rate = double.tryParse(rateController.text) ?? 0;
                    context
                        .read<SimpleInterestCubit>()
                        .calculateSI(principal, time, rate);
                  },
                  child: const Text("Calculate"),
                ),
              ],
            )),
      ),
    );
  }
}
