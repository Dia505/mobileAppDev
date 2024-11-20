import 'dart:io';

void printList(List<int> arr) {
  print("The array is:");
  print(arr);

  print("The array values are:");
  print("By for loop");
  for(int i = 0; i<arr.length; i++) {
    print(arr[i]);
  }

  print("By for-in loop");
  for(int i in arr) {
    print(i);
  }
}

void checkEvenNumbers(List<int> arr) {
  List<int> evenArr = [];
  var count = 0;

  for(var i in arr) {
    if(i % 2 == 0) {
      evenArr.add(i);
      count++;
    }
  }

  print("There are $count even numbers in the array.");
  print("They are: ");

  for(var i in evenArr) {
    print(i);
  }
}

void main() {
  List<int> arr = [];

  print("Enter 10 numbers:");

  for(int i = 0; i<10; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }

  printList(arr);
  checkEvenNumbers(arr);
}