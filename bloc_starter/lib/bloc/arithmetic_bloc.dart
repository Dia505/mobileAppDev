import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'arithmetic_event.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, int> {
  ArithmeticBloc() : super(0) {
    on<AdditionEvent>((event, emit) {
      final result = event.first + event.second;
      emit(result);
    });

    on<SubtractionEvent>((event, emit) {
      final result = event.first - event.second;
      emit(result);
    });

    on<MultiplicationEvent>((event, emit) {
      final result = event.first * event.second;
      emit(result);
    });
  }
}
