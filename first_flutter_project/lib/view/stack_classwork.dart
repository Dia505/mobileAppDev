import 'package:flutter/material.dart';

class StackClasswork extends StatelessWidget {
  const StackClasswork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.yellow,
          ),

          Positioned(
            top: 100,
            left: 35,

            child: Container(
              height: 500,
              width: 350,
              color: Colors.white,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 280.0),
                    child: Icon(Icons.edit),
                  ),

                  SizedBox(
                    width: 300,
                    child: Image.asset("assets/images/image1.jpg")
                  ),

                  const SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.thumb_up),
                        Icon(Icons.comment)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}