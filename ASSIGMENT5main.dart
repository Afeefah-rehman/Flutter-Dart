// Assigment #03
print("************** FIRST **************")
void main() {
  print("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync()!);

  if (age == null) {
    print("Please enter a valid number.");
  } else if (age < 13) {
    print("You are a chil.");
  } else if (age>20){
    print("you are a teenager.");
  } else if(age<65){
    print("You are an adult.");
  } else{
    print("you are senior citizen")
  }
}
   
  
print("************** SECOND **************")

  void main() {
  
  List<dynamic> names = ["Afeefah", 2992, "Faizan", 3075, "Usman", 3058];
  List<dynamic> reversedNames = [];

  for (int i = names.length - 1; i >= 0; i--) {
    reversedNames.add(names[i]);
  }

  print("Original List: $names");
  print("Reversed List: $reversedNames");
}

print("************** THIRD **************")

void main() {
  Map<String, String> contacts = {};

  while (true) {
    print("1. Add Contact");
    print("2. Get Contact");
    print("3. Exit");
    print("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print("Enter name: ");
      String? name = stdin.readLineSync();
      print("Enter phone number: ");
      String? phone = stdin.readLineSync();
      contacts[name!] = phone!;
      print("Contact added.");
    } else if (choice == '2') {
      print("Enter name to retrieve: ");
      String? nameToFind = stdin.readLineSync();
      if (contacts.containsKey(nameToFind)) {
        print("Contact: Name: $nameToFind, Phone: ${contacts[nameToFind]}");
      } else {
        print("Contact not found.");
      }
    } else if (choice == '3') {
      break;
    } else {
      print("Invalid option. Please try again.");
    }
  }
}
