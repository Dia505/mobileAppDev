import 'dart:math';

import 'package:flutter/material.dart';

class CircleAreaView extends StatefulWidget {
  const CircleAreaView({super.key});

  @override
  State<CircleAreaView> createState() => _CircleAreaViewState();
}

class _CircleAreaViewState extends State<CircleAreaView> {
  final radiusController = TextEditingController();
  double area = 0;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation of the Area of a Circle'),
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
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter the radius",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Please enter the radius";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10,),

              Text(
                "Area: $area",
                style: const TextStyle(fontSize: 30),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      area = pi * pow((double.tryParse(radiusController.text) ?? 0), 2);
                    });
                  }
                }, 
                child: const Text("Calculate")),
              ),
            ],
          )
        ),
      ),
    );
  }
}