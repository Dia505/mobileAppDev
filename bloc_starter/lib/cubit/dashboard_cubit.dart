import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/cubit/user_cubit.dart';
import 'package:bloc_starter/view/arithmetic_bloc_view.dart';
import 'package:bloc_starter/view/arithmetic_cubit_view.dart';
import 'package:bloc_starter/view/counter_bloc_view.dart';
import 'package:bloc_starter/view/counter_cubit_view.dart';
import 'package:bloc_starter/view/user_bloc_view.dart';
import 'package:bloc_starter/view/user_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._counterCubit, this._arithmeticCubit, this._userCubit)
      : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final UserCubit _userCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          //BlocProvider.value = dependency injection of the existing cubit
          //BlocProvider = creates a new cubit
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const CounterCubitView(),
                )));
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _arithmeticCubit,
                  child: const ArithmeticCubitView(),
                )));
  }

  void openUserView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _userCubit,
                  child: const UserDetailsView(),
                )));
  }

  void openCounterBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const CounterBlocView(),
                )));
  }

  void openArithmeticBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _arithmeticCubit,
                  child: const ArithmeticBlocView(),
                )));
  }

  void openUserBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _userCubit,
                  child: const UserBlocView(),
                )));
  }
}
