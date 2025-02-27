import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/model/arithmetic.dart';

//flutter test --coverage (to create coverage folder for test stats)
//flutter pub run test_cov_console - to visualize the test stats

void main() {
  group("Addition Subtraction test", () {
    test("Add two numbers", () {
      final arithmetic = Arithmetic();
      int expectedValue = 7;
      arithmetic.first = 3;
      arithmetic.second = 4;
      int actualValue = arithmetic.add()!;

      expect(expectedValue, actualValue);
    });

    test("Subtract two numbers", () {
      final arithmetic = Arithmetic();
      int expectedValue = 2;
      arithmetic.first = 8;
      arithmetic.second = 6;
      int actualValue = arithmetic.subtract()!;

      expect(expectedValue, actualValue);
    });
  });

  group("Multiplication Division test", () {
    test("Multiply two numbers", () {
      final arithmetic = Arithmetic();
      int expectedValue = 10;
      arithmetic.first = 2;
      arithmetic.second = 5;
      int actualValue = arithmetic.multiply()!;

      expect(expectedValue, actualValue);
    });

    test("Divide two numbers", () {
      final arithmetic = Arithmetic();
      int expectedValue = 3;
      arithmetic.first = 27;
      arithmetic.second = 9;
      int actualValue = arithmetic.divide()!;

      expect(expectedValue, actualValue);
    });
  });
}
