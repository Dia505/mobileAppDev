import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //initial value of UI state is set to 0
  CounterCubit() : super(100);

  //reactive programming occurs using emit (that is processing the data and changing the state)
  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if(state == 98) {
      return;
    }
    emit(state - 1);
  }

  void reset() {
    emit(100);
  }
}
