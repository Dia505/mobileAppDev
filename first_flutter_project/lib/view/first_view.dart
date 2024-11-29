import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    int a = 2;
    int b = 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
        centerTitle: true,
        elevation: 0,
      ),

      body: Column(
        children: [
          const Text('Hello World'),
          Text('a + b = ${a + b}')
        ],
      )

    );
  }
}