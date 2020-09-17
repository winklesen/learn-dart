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
  double decimal = 3.14; // decimal
  num number = -3484; // integers and decimal numbers
  bool boolean = true; // true or false
  List list = [1,2,3]; // list of value
  Map map = {'First Name' : 'Samuel' , 'Last Name' : 'Bernard'}; // list of value with key
  var wow = 'awesome' ; // type inference variabel.
  var dynamic; // can store any type data
  dynamic = 'abc';
  dynamic = 123;
  dynamic = 3.14;


}