// Question:4
void main() {
  
  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];

  int largest = numbers[0];

  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  print('Largest element: $largest');
