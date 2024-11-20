import 'dart:io';

bool linearSearch(int val, List<int> arr) {
  for(var i in arr) {
    if(i == val) {
      return true;
    }
  }

  return false;
}

void main() {
  List<int> arr = [];

  print("Enter 10 numbers:");
  for(int i = 0; i<10; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }

  print("Enter a number to check if it is in the list:");
  int val = int.parse(stdin.readLineSync()!);

  if(linearSearch(val, arr) == true) {
    print("The element $val is in the array");
  }
  else {
    print("The element $val is not in the array");
  }
}