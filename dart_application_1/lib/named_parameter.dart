int add({
  required int? first,
  required int? second,
  int? third,
  int? fourth,
  int? fifth
}) {
  return first! + second! + (third ?? 0) + (fourth ?? 0) + (fifth ?? 0);
}

//first:3, second: 4 - named parameters
//By using named parameters, the meaning of each parameter is clear in a function call
void main() {
  print(add(first: 3, second: 4, third: 7));
}