
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
/*
// Final variables are only set once whilst Const variables are compile-time constants (Const variables are implicitly final)
// Instance variables can be final but not const

void main(List<String> args) {

 // final name = 'Bob'; // Without type annotations

  // final String surName = 'Bobby'; // with type annotations

  // const number = 100000;

  // var foo = const [];
 // final bar = const [];
 // const baz = [];

  // foo = [1,2,3];
  // bar = [1,2,3];
  // baz = [1,2,3];

  // print(foo);
  // print(bar);
  // print(baz);

  /*
  Compile time constants are  constants whose respective value is known or computed at the time of compilation of source code.
  Compile-time constants are faster than run-time constants but are less flexible than run-time constants.

  Runtime constants are constants whose respective values can only be known or computed at the time of running of source code.
  Run time Constants are a bit slower than compile-time constants but are more flexible than compile-time constants.
  However, once it is initialized, the value of these constants can’t be changed.
   */
}*/

// Built-in types
/*
/*
Numbers(int,double)
Strings(String)
Booleans(Bool)
Lists also known as Arrays(List<datatype>)
Sets(Set)
Maps(Map)
Runes(Runes; often replaced by the characters API)
Symbols(Symbol)
The value null(Null)

Other types that have special roles in dart.
Object: The superclass of all Dart classes except Null.
Future and Stream: Used in asynchrony support.
Iterable: Used in for-in loops and in synchronous generator functions.
Never: Indicates that an expression can never successfully finish evaluating. Most often used for functions that always throw an exception.
dynamic: Indicates that you want to disable static checking. Usually you should use Object or Object? instead.
void: Indicates that a value is never used. Often used as a return type.

The Object, Object?, Null, and Never classes have special roles in the class hierarchy, as described in the top-and-bottom section of Understanding null safety.

 */
// Numbers
void main(List<String> args) {
  int age = 10; // an integer value
  double height = 12.0; // double precision or floating point numbers

  print(age);
  print(height);
}*/
// working with numbers

/*void main(List<String> args) {
  var x = 1;
  var hex = 0xDEADBEEF;
  var exponent = 8e5;
  num val = 1;
  val += 2.6;

  print(val.runtimeType);

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // print(x.runtimeType); // checking the data type of the variable
  // print(hex.runtimeType);
  // print(exponent.runtimeType);
}*/
/*

Android Studio Arctic Fox | 2020.3.1 Patch 4
Build #AI-203.7717.56.2031.7935034, built on November 21, 2021
Runtime version: 11.0.10+0-b96-7249189 amd64
VM: OpenJDK 64-Bit Server VM by Oracle Corporation
Windows 10 10.0
GC: G1 Young Generation, G1 Old Generation
Memory: 1280M
Cores: 4
Registry: external.system.auto.import.disabled=true
Non-Bundled Plugins: Dart, com.thoughtworks.gauge, org.jetbrains.kotlin, io.flutter, org.intellij.plugins.markdown

 */

// More on numbers
/*
void main(List<String> args) {
  // print(identical(1.0, 1));
  // print(double.nan == double.nan);
  // print((0.5 + 0.5) is bool);
  var count = 10.0 * 2;
  var message = "$count cows";
  if (message != "20.0 cows") throw Exception("Unexpected: $message");
  print(message);
}
*/

// Strings

void main(List<String> args) {
  String variable = 'Hello';
  print('$variable world'); // Using String interpolation
}