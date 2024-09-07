// Question:08
void main() {
  List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
  
  usersEligibility.removeWhere((item) => item == 'eligible');
  
  print(usersEligibility);
}