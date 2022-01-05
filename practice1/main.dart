
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


// variables in dart
/*void main(List<String> args) {
  // The Object class is the base class for non-Null classes
  Object car = 'Hello'; // Using the object class
  print(car.runtimeType); // printing out the runtimeType of the car variable
}*/

/*void main(List<String> args) {
  // int? lineCount;
  // assert(lineCount == null);
}*/

/*// variable
late String description;
// declaration of late modifier

// late variables
void main(List<String> args) {
  description = 'Hello World';
  print(description);
}*/

/*
// more on late variables
// creating class Thermometer
import 'dart:io';

class Thermometer {
  // late String temperature = _readThermometer(); // Lazily initialized.
  // creating a private field/property with late modifier
  late String _readThermometer;

  // Creating the Getter method
  // to get input from Field/Property
  String get getTemperature {
    return _readThermometer;
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setTemperature(String temp) {
    _readThermometer = temp;
  }
}

void main() {

  // Creating Instance of class
  Thermometer thermometer = Thermometer();

  // Calling the set_name method(setter method we created)
  // To set the value in Property "_readThermometer"

  String? fahrenheit = stdin.readLineSync();

  thermometer.setTemperature = fahrenheit!;

  // Calling the get_name method(getter method we created)
  // To get the value from Property "geekName"
  print('This is your temperature in ${thermometer.getTemperature}');

}
*/

// Final and Const
// Final variables are only set once whilst Const variables are compile-time constants (Const variables are implicitly final)
// Instance variables can be final but not const

void main(List<String> args) {

  final name = 'Bob';

  final String surName = 'Bobby';

}