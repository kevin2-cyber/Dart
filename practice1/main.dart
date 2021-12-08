
class Car{

  int numberOfSeats = 5;
  void drive(){
    print('I am driving');
  }

}

class Ball{

  late int circles;
  late int hexagons;

  Ball({required this.circles, required this.hexagons});

  int play(){
    return circles + hexagons;
  }


}



void main(List<String> args) {
  var car = 'BMW';
  int sum2 = sum(4, 6);
  print('This is my new ${car}, ${sum2}');

  Car myCar = Car();
  myCar.drive();

  Ball myBall = Ball(circles: 20, hexagons: 20);

  print(myBall.play());

}

int sum(int num1, int num2) {
  return num1 + num2;
}
