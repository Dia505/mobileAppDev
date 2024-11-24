import 'package:dartz/dartz.dart';

class Arithmetic {
  //final keyword ensures that the variable can only be assigned once
  //Once a value is assigned to a final variable, it can't be changed

  //Over here, the final variables are declared, but not initialized
  //In such cases, Dart expects the programmer to initialize the variable later, but always before it is accessed 
  final int first;
  final int second;

  //Like here, the variables first and second are instance variables that will be assigned during constructor call
    //as mentioned here, in the constructor
  Arithmetic({required this.first, required this.second});

  int sub() {
    return first - second;
  }

  //Either - a common pattern used in functional programming to represent two possible outcomes(either a success or a failure)
  Either<String, int> add() {
    try {
      //Right - represents success or the resulting value
      return Right(first + second);
    } 
    catch (e) {
      //Left - represents failure or an error
      return Left(e.toString());
    }
  }

  Either<String, int> div() {
    try {
      return Right(first ~/ second);
    } 
    catch (e) {
      return Left(e.toString());
    }
  }
}

void main() {
  var arithmetic = Arithmetic(first: 10, second: 5);
  print(arithmetic.sub());
  print(arithmetic.add());

  var result = arithmetic.add();
  //fold - handles both cases and provides a unified result from the two outcomes
  result.fold(
    (left) => print("Error: $left"),
    (right) => print("Result: $right"),
  );

  var result2 = arithmetic.div();
  result2.fold(
    (left) => print("Error: $left"),
    (right) => print("Result: $right"),
  );
}