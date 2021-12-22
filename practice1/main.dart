
// import a method from the dart:io library
import 'dart:io';

// Define a function.
void printInteger(String aNumber) {
  print('The name is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
void main(List<String> args) {
  //var number = 42; // Declare and initialize a variable.
  //printInteger(number); // Call a function.
  String? name = stdin.readLineSync(); // accepting input from the user and make it nullable
  printInteger(name!); // call a function and add a null check
}
