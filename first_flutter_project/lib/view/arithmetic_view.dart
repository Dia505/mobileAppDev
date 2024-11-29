import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // int first = 0;
  // int second = 0;

  //TextEditingController is better than onChange 
  //It sets a value in the TextFormField so that the developer doesn't have to keep entering a value (eg:- logging in time and again)
  final firstController = TextEditingController(text: "2");
  final secondController = TextEditingController(text: "3");
  int result = 0;

  //Global key for Form() state
  final formKey = GlobalKey<FormState>();

  @override
  //build - called when ctrl+s
  //BuildContext context - checks for values?
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Form(
          key: formKey,
          child: Column(
            children: [

              //TextFormField is better than TextField because it presents validators
              TextFormField(

                //ON-CHANGE
                // onChanged: (value) {

                //   //int.parse will throw an error if conversion from String to int fails
                //   //int.tryParse returns null if the conversion fails
                //   //Here the tryParse converts the String to int, and if it fails, it will return 0
                //   first = int.tryParse(value) ?? 0;
                // },

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
                // onChanged: (value) {
                //   second = int.tryParse(value) ?? 0;
                // },

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
                //for the button's width to be end to end 
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      result = (int.tryParse(firstController.text) ?? 0) + (int.tryParse(secondController.text) ?? 0);
                    });
                  }
                }, 
                child: const Text("Addition")),
              ),

              const SizedBox(height: 10),

              SizedBox(
                //for the button's width to be end to end 
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(formKey.currentState!.validate()) {
                    setState(() {
                      result = (int.tryParse(firstController.text) ?? 0) - (int.tryParse(secondController.text) ?? 0);
                    });
                  }
                }, 
                child: const Text("Subtraction")),
              ),
            ],
          )),
        )

    );
  }
}