import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  List<String> calculatorSymbolList = [
    "C",
    "*",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "*",
    "%",
    "0",
    ".",
    "="
  ];

  final _inputController = TextEditingController();
  final key = GlobalKey<FormState>();

  int first = 0;
  int second = 0;
  String operation = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Dia Calculator App"),
        backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Form(
          key: key,
          
          child: Column(
            children: [

              TextFormField(
                controller: _inputController,
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0),
                  itemCount: calculatorSymbolList.length,

                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white),

                      onPressed: () {

                        setState(() {
                          //characters from the calculator list
                          String symbol = calculatorSymbolList[index];

                          //The if-else condition separates 5 conditions
                          //#1 when user clicks C (cancel)
                          if (symbol == "C") {
                            _inputController.text = "";
                            first = 0;
                            second = 0;
                            operation = "";
                          } 
                          
                          //#2 when user clicks <-
                          else if (symbol == "<-") {
                            if (_inputController.text.isNotEmpty) {
                              _inputController.text = _inputController.text
                                  .substring(0, _inputController.text.length - 1);
                            }
                          } 
                          
                          //#3 when user clicks "=" - the second number (the only one remaining in the input controller) is assigned to the "second" variable
                          else if (symbol == "=") {
                            try {
                              second = int.parse(_inputController.text);
                              if (operation == "+") {
                                _inputController.text =
                                    (first + second).toString();
                              } 
                              else if (operation == "-") {
                                _inputController.text =
                                    (first - second).toString();
                              } 
                              else if (operation == "*") {
                                _inputController.text =
                                    (first * second).toString();
                              } 
                              else if (operation == "/") {
                                if (second != 0) {
                                  _inputController.text =
                                      (first / second).toStringAsFixed(2);
                                } else {
                                  _inputController.text = "Error";
                                }
                              }
                              first = 0;
                              second = 0;
                              operation = "";
                            } 
                            catch (e) {
                              _inputController.text = "Error";
                            }
                          } 
                          
                          //#4 When the user clicks an operator - the number entered is stored to "first" and the operator symbol is stored in "operation"
                          else if ("+-*/%".contains(symbol)) {
                            first = int.tryParse(_inputController.text) ?? 0;
                            operation = symbol;
                            //after assigning values to "first" and "operation", any text in the inputController is removed
                            _inputController.text = "";
                          } 

                          //#5 When the user clicks on a number or point (.), it is concatenated with the inputController text
                          else {
                            _inputController.text += symbol;
                          }
                        });
                      },
                      
                      child: Text(calculatorSymbolList[index], style: const TextStyle(fontSize: 18),),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
