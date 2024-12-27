import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<int> {

  //never initialize any parameters in constructor
  //initialize them in function
  ArithmeticCubit(): super(0);

  void add(int first, int second) {
    emit(first+second);
  }

  void subtract(int first, int second) {
    emit(first-second);
  }

  void multiply(int first, int second) {
    emit(first*second);
  }
}