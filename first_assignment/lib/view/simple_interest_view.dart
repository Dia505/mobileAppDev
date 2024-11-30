import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  final principalController = TextEditingController();
  final rateController = TextEditingController();
  final timeController = TextEditingController();
  double si = 0;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculation'),
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
                controller: principalController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter the principal amount",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Please enter the principal amount";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10,),

              TextFormField(
                controller: rateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter the rate",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Please enter the rate";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10,),

              TextFormField(
                controller: timeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter the time (in years)",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Please enter the time (in years)";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10,),

              Text(
                "S.I - $si",
                style: const TextStyle(fontSize: 30),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      si = ((double.tryParse(principalController.text) ?? 0) * (double.tryParse(rateController.text) ?? 0) * (double.tryParse(timeController.text) ?? 0) / 100);
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