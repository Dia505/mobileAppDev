import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cubit Class Assignment",
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => SimpleInterestCubit(),
        child: const SimpleInterestView(),
      ),
    );
  }
}
