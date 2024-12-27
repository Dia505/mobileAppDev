import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:bloc_starter/cubit/user_cubit.dart';
import 'package:bloc_starter/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          //creating the navigation cubits first before the navigator cubit, due to dependency injection
          BlocProvider(create: (context) => CounterCubit()),
          BlocProvider(create: (context) => ArithmeticCubit()),
          BlocProvider(create: (context) => UserCubit()),
          BlocProvider(
              create: (context) => DashboardCubit(
                    context.read<CounterCubit>(),
                    context.read<ArithmeticCubit>(),
                    context.read<UserCubit>(),
                  ))
        ],
        child: const MaterialApp(
            title: 'Flutter BLoC',
            debugShowCheckedModeBanner: false,
            home: DashboardView()));
  }
}
