int multiply(int first, int second, [int third = 1, int fourth = 1, int fifth = 1]) {
  return first*second*third;
}

void main() {
  int first = 10;
  int second = 20;
  int third = 30;
  int fourth = 40; 
  int fifth = 50;

  print(multiply(first, second, third, fourth, fifth));
}