import 'package:first_flutter_project/core/common/common_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/core/common/common_card.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [

              //spread operator used
              for(int i = 1; i<=10; i++) ...{
                GestureDetector(
                  onTap: () => showSnackBar(
                    context: context,
                    message: "This is Card $i"
                  ),

                  child: CommonCard(
                    title: "Card $i",

                    //isEven used instead of if..else
                    color: i.isEven ? Colors.blue : Colors.amber),)
              }
            ],
          ),
        )),
    );
  }
}

