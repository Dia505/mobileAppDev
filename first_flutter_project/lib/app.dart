// import 'package:first_flutter_project/view/first_view.dart';
// import 'package:first_flutter_project/view/arithmetic_view.dart';
// import 'package:first_flutter_project/view/column_view.dart';
// import 'package:first_flutter_project/view/container_view.dart';
import 'package:first_flutter_project/view/load_image_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadImageView(),
    );
  }
}