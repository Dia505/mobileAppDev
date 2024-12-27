import 'package:flutter_bloc/flutter_bloc.dart';

class TempConverterCubit extends Cubit<double>{
  TempConverterCubit(): super(0);

  void convertTemperature(double value, String fromUnit, String toUnit) {
    double result = value;
    if (fromUnit == "Celsius") {
      result = toUnit == "Fahrenheit" ? (value * 9 / 5) + 32 : value + 273.15;
    } else if (fromUnit == "Fahrenheit") {
      result = toUnit == "Celsius" ? (value - 32) * 5 / 9 : ((value - 32) * 5 / 9) + 273.15;
    } else if (fromUnit == "Kelvin") {
      result = toUnit == "Celsius" ? value - 273.15 : ((value - 273.15) * 9 / 5) + 32;
    }
    emit(result);
  }
}