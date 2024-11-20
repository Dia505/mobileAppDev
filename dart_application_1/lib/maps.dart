import 'dart:io';

void main() {
  Map cityCountry = <String, String>{};

  cityCountry["New York"] = "USA";
  cityCountry["Tokyo"] = "Japan";
  cityCountry["London"] = "UK";
  cityCountry["Paris"] = "France";

  // cityCountry.forEach((city, country) {
  //   print("$city is in $country");
  // });

  print("Enter a city name:");
  String input = stdin.readLineSync()!;
  
  cityCountry.forEach((city, country) {
    if(input == city) {
      print(country);
    }
  });
  print("$input is in ${cityCountry[input]}");
}