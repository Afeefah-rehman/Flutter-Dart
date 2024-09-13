// QUESTION:01
void main() {
  Map<String, dynamic> car = {
    'brand': 'PORSHE',
    'color': 'BLUE',
    'isSedan': true
  };

  if (car['isSedan'] == true && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }
}
