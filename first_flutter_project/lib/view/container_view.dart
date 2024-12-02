import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container View'),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),

      //SafeArea places the elements below the status bar/iphone notch
      body: SafeArea(

        //By wrapping the Container with Center, it is placed at the center of the screen
        child: Container(

          //the width and height have to be double.infinity because 
            //the child container is in the Scaffold, so parent Container has to be spread across the Safe Area
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.bottomRight,

          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
          
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
          
            child: const Text("I am a container"),
          ),
        ),
      ),
    );
  }
}