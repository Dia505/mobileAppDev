import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column View'),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),

    body: Container(
      color: Colors.grey,
      width: double.infinity,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        //start: at the top of the column
        //centre: middle of the column length
        //end: at the bottom
        children: [
          // Icon(Icons.star, size: 50,),
          // Icon(Icons.star, size: 50,),

          //Spacer() creates space between two groups of elements
          // Spacer(),

          // Icon(Icons.star, size: 50,),

          ElevatedButton(onPressed: (){}, 
            child: const Text("Button 1")
          ),

          ElevatedButton(onPressed: (){}, 
            child: const Text("Button 2")
          ),

          ElevatedButton(onPressed: (){}, 
            child: const Text("Button 3")
          ),
        ],
      ),
    ),
    );
  }
}

