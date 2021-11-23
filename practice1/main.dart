
class Car{

  int numberOfSeats = 5;
  void drive(){
    print('I am driving');
  }

}




void main(List<String> args) {
  var car = 'BMW';
  int sum2 = sum(4, 6);
  print('This is my new ${car}, ${sum2}');

  Car myCar = Car();
  myCar.drive();
}

int sum(int num1, int num2) {
  return num1 + num2;
}
