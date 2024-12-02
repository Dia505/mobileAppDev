import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image View'),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}