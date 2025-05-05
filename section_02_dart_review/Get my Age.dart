import 'dart:io';

void main(List<String> args) {
  ageFromInputAge();
  ageFromInputBirthYear();
}

void ageFromInputAge() {
  print("Enter Your Age: ");
  var age = stdin.readLineSync();
  print("Your age is $age Years Old");
}

void ageFromInputBirthYear() {
  print("Enter Your Birth Year : ");
  var birth_date = stdin.readLineSync();
  var age = DateTime.now().year - int.parse(birth_date!);
  print("Your age is $age Years Old");
}
