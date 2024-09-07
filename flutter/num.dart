// Question:04
void main() {
  List<int> numbers = [34, 78, 12, 89, 23, 67];
  
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  int greatest = numbers.reduce((a, b) => a > b ? a : b);
  
  print('Smallest number: $smallest');
  print('Greatest number: $greatest');
}