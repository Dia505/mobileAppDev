import 'package:bloc_starter/bloc/arithmetic_bloc.dart';
import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:bloc_starter/cubit/user_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initCubit();
  _initBloc();
}

//all the cubits are being initialized here

void _initCubit() {
  //cubit requires register factory because it maintains the state and doesnt destroy the data
  //but to create a new singlteon class on requirement, lazy singleton is used
  serviceLocator.registerLazySingleton<CounterCubit>(() => CounterCubit());
  serviceLocator
      .registerLazySingleton<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLocator.registerLazySingleton<UserCubit>(() => UserCubit());

  serviceLocator.registerLazySingleton<DashboardCubit>(() =>
      DashboardCubit(serviceLocator(), serviceLocator(), serviceLocator()));
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => ArithmeticBloc());
}
