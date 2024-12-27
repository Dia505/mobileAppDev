import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final _firstController = TextEditingController();
    final _secondController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    SizedBox _gap = const SizedBox(
      height: 10,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic Cubit"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _firstController,
                decoration: const InputDecoration(
                    labelText: "First Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              _gap,
              TextFormField(
                controller: _secondController,
                decoration: const InputDecoration(
                    labelText: "Second Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              _gap,
              BlocBuilder<ArithmeticCubit, int>(builder: (context, state) {
                return Text(
                  "Result: $state",
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                );
              }),
              _gap,
              ElevatedButton(
                onPressed: () {
                  final first = int.tryParse(_firstController.text) ?? 0;
                  final second = int.tryParse(_secondController.text) ?? 0;
                  context.read<ArithmeticCubit>()
                    ..first = first
                    ..second = second
                    ..add();
                },
                child: const Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                  final first = int.tryParse(_firstController.text) ?? 0;
                  final second = int.tryParse(_secondController.text) ?? 0;
                  context.read<ArithmeticCubit>()
                    ..first = first
                    ..second = second
                    ..subtract();
                },
                child: const Text("Subtract"),
              ),
              ElevatedButton(
                onPressed: () {
                  final first = int.tryParse(_firstController.text) ?? 0;
                  final second = int.tryParse(_secondController.text) ?? 0;
                  context.read<ArithmeticCubit>()
                    ..first = first
                    ..second = second
                    ..multiply();
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
