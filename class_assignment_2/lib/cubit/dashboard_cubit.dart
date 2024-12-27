import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment_2/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_2/cubit/temp_converter_cubit.dart';
import 'package:class_assignment_2/view/area_of_circle_view.dart';
import 'package:class_assignment_2/view/simple_interest_view.dart';
import 'package:class_assignment_2/view/temp_converter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void>{
  DashboardCubit(this._areaOfCircleCubit, this._simpleInterestCubit, this._tempConverterCubit): super(null);

  final AreaOfCircleCubit _areaOfCircleCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final TempConverterCubit _tempConverterCubit;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _areaOfCircleCubit,
                  child: const AreaOfCircleView(),
                )));
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _simpleInterestCubit,
                  child: const SimpleInterestView(),
                )));
  }

  void openTempConverterView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _tempConverterCubit,
                  child: const TempConverterView(),
                )));
  }
}