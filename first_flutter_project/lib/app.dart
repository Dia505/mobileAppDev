// import 'package:first_flutter_project/view/first_view.dart';
// import 'package:first_flutter_project/view/arithmetic_view.dart';
// import 'package:first_flutter_project/view/column_view.dart';
// import 'package:first_flutter_project/view/container_view.dart';
// import 'package:first_flutter_project/view/load_image_view.dart';
// import 'package:first_flutter_project/view/flexible_expanded_view.dart';
// import 'package:first_flutter_project/view/show_snackbar_view.dart';
// import 'package:first_flutter_project/view/show_snackbar_view.dart';
// import 'package:first_flutter_project/view/user_detail_singular_view.dart';
// import 'package:first_flutter_project/view/user_details_view.dart';
// import 'package:first_flutter_project/view/user_output_view.dart';
import 'package:first_flutter_project/view/card_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => const ShowSnackbarView(),
      //   "/output": (context) => const UserOutputView(),
      //   "/details": (context) => const UserDetailSingularView(),
      // },

      home: CardView(),
    );
  }
}