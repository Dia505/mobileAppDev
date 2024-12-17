import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack View"),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),

      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.blue,
              child: const Text("First container"),
            ),

            Positioned(
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: const Text("Second container"),
              ),
            ),

            Positioned(
              bottom: -20,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purple,
                child: const Text("Third container"),
              ),
            ),

            Positioned(
              bottom: -60,
              left: 20,
              child: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image2.jpg"),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}