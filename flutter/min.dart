// Question:05
int getMaxValue(List<int> numbers) {
  return numbers.reduce((a, b) => a > b ? a : b);
}

void main() {
  List<int> numbers = [34, 78, 12, 89, 23, 67];
 
  int maxValue = getMaxValue(numbers);
  
  print('Maximum value: $maxValue');
}