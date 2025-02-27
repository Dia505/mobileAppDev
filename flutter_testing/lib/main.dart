import 'package:flutter/material.dart';
import 'package:flutter_testing/screen/arithmetic_screen.dart';

import 'screen/output_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      routes: {
        '/': (context) => const ArithemticScreen(),
        '/arithmeticOutput': (context) => const ArithmeticOutputScreen(),
      },
    ),
  );
}
