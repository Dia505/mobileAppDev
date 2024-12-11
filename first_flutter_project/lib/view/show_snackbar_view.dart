import 'package:first_flutter_project/core/common/common_snackbar.dart';
import 'package:flutter/material.dart';

class ShowSnackbarView extends StatefulWidget {
  const ShowSnackbarView({super.key});

  @override
  State<ShowSnackbarView> createState() => _ShowSnackbarViewState();
}

class _ShowSnackbarViewState extends State<ShowSnackbarView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar View'),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),

      body: Column(
        children: [
          ElevatedButton(
            //function called here, using arrow function
            onPressed: () => showSnackBar(
              context: context,
              message: "Message A"), 
            child: const Text("Snackbar 1")
          ),

          ElevatedButton(
            onPressed: () => showSnackBar(
              context: context,
              message: "Message B",
              color: Colors.purple), 
            child: const Text("Snackbar 2")
          ),
        ],
      ),
    );
  }
}