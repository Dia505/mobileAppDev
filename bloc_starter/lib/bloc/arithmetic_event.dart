part of 'arithmetic_bloc.dart';

@immutable
sealed class ArithmeticEvent {}

class AdditionEvent extends ArithmeticEvent {
  final int first;
  final int second;

  AdditionEvent(this.first, this.second);
}

class SubtractionEvent extends ArithmeticEvent {
  final int first;
  final int second;

  SubtractionEvent(this.first, this.second);
}

class MultiplicationEvent extends ArithmeticEvent {
  final int first;
  final int second;

  MultiplicationEvent(this.first, this.second);
}
