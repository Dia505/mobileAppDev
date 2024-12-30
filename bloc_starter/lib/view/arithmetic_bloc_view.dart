import 'package:bloc_starter/bloc/arithmetic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticBlocView extends StatelessWidget {
  const ArithmeticBlocView({super.key});

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
        title: const Text("Arithmetic Bloc"),
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
              BlocBuilder<ArithmeticBloc, int>(builder: (context, state) {
                return Text(
                  "Result: $state",
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                );
              }),
              gap,
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()) {
                    final first = int.parse(firstController.text);
                    final second = int.parse(secondController.text);

                    context
                      .read<ArithmeticBloc>()
                      .add(AdditionEvent(first, second));
                  }
                },
                child: const Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()) {
                    final first = int.parse(firstController.text);
                    final second = int.parse(secondController.text);

                    context
                      .read<ArithmeticBloc>()
                      .add(SubtractionEvent(first, second));
                  }
                },
                child: const Text("Subtract"),
              ),
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()) {
                    final first = int.parse(firstController.text);
                    final second = int.parse(secondController.text);

                    context
                      .read<ArithmeticBloc>()
                      .add(MultiplicationEvent(first, second));
                  }
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