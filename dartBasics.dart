import 'dart:io';

main() {
    //type inference
    var firstName = "Rod";
    //Static data type
    String lastname = "Stewart";

    print(firstName + " " + lastname);

    stdout.writeln("What is your name?");

    // A value of type 'String?' can't be assigned to a variable of type 'String' because 'String?' is nullable and 'String' isn't
    String? name = stdin.readLineSync();
    print("My name is $name");

    //for each loop 
    var numList = [1,2,3,4,5];
    int sum = 0;
    numList.forEach((var a) => sum = sum + a);
    print(sum);

}

//when typing dart dartBasics.dart - JIT compilation occurs
