
// import a method from the dart:io library
//import 'dart:io';

// Define a function.
/*void printInteger(String aNumber) {
  print('The name is $aNumber.'); // Print to console.
}*/

// This is where the app starts executing.
/*void main(List<String> args) {
  //var number = 42; // Declare and initialize a variable.
  //printInteger(number); // Call a function.
  //String? name = stdin.readLineSync(); // accepting input from the user and make it nullable
  int name_him = 2; // snake_case variable in dart
  print(name_him);
  //printInteger(name!); // call a function and add a null check
}*/

/*class Car {
  int? car;

}*/

// values can't be null unless you say they can in null safety

// import 'dart:io';

/*String message(bool isValid) {
  return isValid ? 'This is valid' : 'This is not valid';
}*/

/*void main(List<String> args) {

  int age = stdin.readByteSync();
// applying ternary operators in dart
  String output = age < 1 ? 'Infant' : age < 4 ? 'Baby': 'Grown';

 print(output);
//print(message(true));

}*/



void main(List<String> args) {
  // The Object class is the base class for non-Null classes
  Object car = 'Hello'; // Using the object class
  print(car.runtimeType); // printing out the runtimeType of the car variable
}