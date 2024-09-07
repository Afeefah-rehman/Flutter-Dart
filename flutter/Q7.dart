// Question:07
void main() {
  List<int> numbers = [-5, 3, -2, 7, -1, 4];
  
  List<int> positiveNumbers = numbers.where((number) => number >= 0).toList();
  
  print(positiveNumbers);
}