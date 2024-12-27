import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final firstController = TextEditingController();
    final secondController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    SizedBox gap = const SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic Cubit"),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: firstController,
                decoration: const InputDecoration(
                    labelText: "First Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              gap,
              TextFormField(
                controller: secondController,
                decoration: const InputDecoration(
                    labelText: "Second Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              gap,
              BlocBuilder<ArithmeticCubit, int>(builder: (context, state) {
                return Text(
                  "Result: $state",
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                );
              }),
              gap,
              ElevatedButton(
                onPressed: () {
                  final first = int.tryParse(firstController.text) ?? 0;
                  final second = int.tryParse(secondController.text) ?? 0;
                  context.read<ArithmeticCubit>().add(first, second);
                },
                child: const Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                  final first = int.tryParse(firstController.text) ?? 0;
                  final second = int.tryParse(secondController.text) ?? 0;
                  context.read<ArithmeticCubit>().subtract(first, second);
                },
                child: const Text("Subtract"),
              ),
              ElevatedButton(
                onPressed: () {
                  final first = int.tryParse(firstController.text) ?? 0;
                  final second = int.tryParse(secondController.text) ?? 0;
                  context.read<ArithmeticCubit>().multiply(first, second);
                },
                child: const Text("Multiply"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
