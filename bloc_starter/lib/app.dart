import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:bloc_starter/service%20locator/service_locator.dart';
import 'package:bloc_starter/view/dashboard_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //   return MultiBlocProvider(
    //       providers: [
    //         //creating the navigation cubits first before the navigator cubit, due to dependency injection

    //         //Either of these codes call the cubit object. You may use any
    //         BlocProvider<CounterCubit>(create: (context) => serviceLocator()),
    //         BlocProvider(create: (context) => serviceLocator<ArithmeticCubit>()),
    //         BlocProvider<UserCubit>(create: (context) => serviceLocator()),

    //         //here the parameters of dashboard cubit needn't be mentioned because it is already called in _initCubit()
    //         //thus, the parameters automatically come with the dashboard
    //         BlocProvider<DashboardCubit>(create: (context) => serviceLocator()),
    //       ],
    //       child: const MaterialApp(
    //           title: 'Flutter BLoC',
    //           debugShowCheckedModeBanner: false,
    //           home: DashboardView()));
    // }

    //Here multi provider isnt used.
    //Instead, by using BlocProvider.value, the existing instance of dashboard cubit is passed through service locator
    //through which the dashboard cubit's parameters also are passed
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter BLoC",
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: const DashboardView(),
      ),
    );
  }
}
