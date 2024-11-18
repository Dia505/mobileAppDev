void multiplicationTable(int number) {
  for (int i = 1; i<=10; i++) {
    print("$number x $i = ${number * i}");
  }
}

void main() {
  multiplicationTable(5);
}