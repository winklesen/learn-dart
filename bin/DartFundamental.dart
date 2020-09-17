import 'dart:ffi';

import 'package:DartFundamental/DartFundamental.dart' as DartFundamental;
import 'dart:io';

// Single line comment
/*
  multi
  line
  comment
*/
/// documentation comment
/** can add reference in comment
    example : [main]
 */

void main(List<String> arguments) {
  // print('Hello world: ${DartFundamental.calculate()}!');

  // Show output on console
  var greetings = 'Hello Dart!';
  print(greetings);

  stdout.write('Your Name :'); // write out
  String name = stdin.readLineSync(); // write in
  stdout.write('Your Nickname :');
  String nickname = stdin.readLineSync();
  stdout.write('Your Age :'); // stdout.write not creates new line
  int age =  int.parse(stdin.readLineSync());
  print("Hi $name or should i call you $nickname. You're still $age years old."); // Print creates new line


  // Variabel
  String word = 'Kata '; // text
  int integer = 123; // integers
  double decimal =  .14; // decimal
  num number = -3484; // integers and decimal numbers
  bool boolean = true; // true or false
  List list = [1,2,3]; // list of value
  Map map = {'First Name' : 'Samuel' , 'Last Name' : 'Bernard'}; // list of value with key
  var wow = 'awesome' ; // type inference variabel.
  var dynamic; // can store any type data
  dynamic = 'abc';
  dynamic = 123;
  dynamic = 3.14;

  // Parsing
  var eleven = int.parse('11');
  var elevenPointTwo = double.parse('11.2');
  var elevenAsString = 11.toString();
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'

  // String
  String singleQuote = 'Ini adalah String';
  String doubleQuote = "Ini juga String";
  print('"What do you think of Dart?" he asked');
  print("You're amazing");
  print('"I think it\'s great!" I answered confidently'); // escape string
  print("My name is $name, and i'm the fastest man alive..."); // String interpolation
  print(r"He's just buy a $1,000.00 computer"); // 'r' Ignore interpolation
  print('Hi \u2665'); // \uXXXX unicode


}