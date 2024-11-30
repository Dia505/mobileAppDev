import 'package:first_assignment/view/arithmetic_view.dart';
import 'package:first_assignment/view/simple_interest_view.dart'; 
import 'package:first_assignment/view/circle_area_view.dart';
import 'package:flutter/material.dart'; 

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard View"),
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: GridView.count(
          crossAxisCount: 2,
        
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const SimpleInterestView()),
                  );
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.money_off),
                    Text("Simple Interest Calculation")
                  ],
                ),
              ),
            ),
        
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const CircleAreaView()),
                  );
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.architecture),
                    Text("Calculation of the Area of a Circle")
                  ],
                ),
              ),
            ),
        
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const ArithmeticView()),
                  );
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.calculate),
                    Text("Arithmetic Calculation")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}