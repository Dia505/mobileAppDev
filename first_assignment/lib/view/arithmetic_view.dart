import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  double result = 0;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Calculation'),
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter first number",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Please enter the first number";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter second number",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Please enter the second number";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),

              Text(
                "Result: $result",
                style: const TextStyle(fontSize: 30),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      result = (double.tryParse(firstController.text) ?? 0) + (double.tryParse(secondController.text) ?? 0);
                    });
                  }
                }, 
                child: const Text("Addition")),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      result = (double.tryParse(firstController.text) ?? 0) - (double.tryParse(secondController.text) ?? 0);
                    });
                  }
                }, 
                child: const Text("Subtraction")),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      result = (double.tryParse(firstController.text) ?? 0) * (double.tryParse(secondController.text) ?? 0);
                    });
                  }
                }, 
                child: const Text("Multiplication")),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      double numerator = double.tryParse(firstController.text) ?? 0;
                      double denominator = double.tryParse(secondController.text) ?? 0;

                      if (denominator != 0) {
                        result = numerator / denominator;
                      } 
                      else {
                        result = 0;
                        String message = "Cannot divide by zero";
                      }
                    });
                  }
                }, 
                child: const Text("Division")),
              ),
            ],
          )),
        )

    );
  }
}