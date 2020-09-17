import 'package:DartFundamental/Animal.dart';
import 'package:DartFundamental/Flyable.dart';

class Bird extends Animal implements Flyable{
  String featherColor;
  Bird(String name, int age, double weight, this.featherColor) : super(name, age, weight);

  @override
  void fly() {
    print("$name is flying");
  }

}