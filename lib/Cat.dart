import 'package:DartFundamental/Animal.dart';
import 'package:DartFundamental/BreathAble.dart';

class Cat extends Animal with BreathAble{
  String furColor;

  Cat(String name, int age, double weight, this.furColor)
      : super(name, age, weight);

  void walk() {
    print('$name is walking');
  }
}
