import 'package:flutter/material.dart';

//Function for snackbar
//ScaffoldMessenger - the container required to display the snack bar

showSnackBar({
  //BuildContext: to specify the screen in which to display the snackbar
  required BuildContext context,
  required String message,
  Color? color
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: color ?? Colors.green,
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
    )
  );
}