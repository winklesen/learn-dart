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
  var nickname = stdin.readLineSync();
  stdout.write('Your Age :'); // stdout.write not creates new line
  int age = int.parse(stdin.readLineSync());
  print(
      "Hi $name or should i call you $nickname. You're still $age years old."); // Print creates new line

  /*
  * Data Type
  */

  // Variabel
  String word = 'Kata '; // text
  int integer = 123; // integers
  double decimal = .14; // decimal
  num number = -3484; // integers and decimal numbers
  bool boolean = true; // true or false
  List list = [1, 2, 3]; // list of value
  Map map = {
    'First Name': 'Samuel',
    'Last Name': 'Bernard'
  }; // list of value with key
  var wow = 'awesome'; // type inference variabel.
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
  print(
      "My name is $name, and i'm the fastest man alive..."); // String interpolation
  print(r"He's just buy a $1,000.00 computer"); // 'r' Ignore interpolation
  print('Hi \u2665'); // \uXXXX unicode

  // Boolean
  bool alwaysTrue = true;
  var alwaysFalse = false;
  var notTrue = !true;
  bool notFalse = !false;

  // Operator
  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1

  /*
    multiply & divide first, and then add or substract
    just like math c'mon
  */
  print(2 + 4 * 2);
  print((1 + 3) * (4 - 2)); // using '(operation)' is exceptional
  var a = 0, b = 5, c = 2;
  a++; // increment
  b--; // decrement
  c *= 3; // c = c * 3 atau c = 2 * 3
  print(a); // output = 1
  print(b); // output = 4
  print(c);

  // Exceptions
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on IntegerDivisionByZeroException {
    // if specific exception occur
    print('Can not divide by zero.');
  } catch (e, s) {
    // catch exception
    print('Exception happened: $e'); // print exception
    print('Stack trace: $s'); // print the detail
  } finally {
    print('This line still executed');
  }

  // Function
  /*
    returnType functionName(type param1, type param2, ...) {
      return result;
    }
  */
  calculateCelcius();
  greetNewUser('Samuel', null, true); // with positioning
  greetNewUserAgain(
      name: 'Samuel', age: 18, isVerified: true); // with param name
  greetNewUserAgainAndAgain(); // its still okay

  // const variabel
  const foo = 'barr'; // compile-time constants,
  final firstName = stdin.readLineSync(); // runtime constants
  //  fistName = 'Dart'; cant change value
  print('Hello $firstName');

  /*
  * Control Flow
  */

  // if and else
  if(true) {
    // do something
  }else{
    // do something
  }
  var shopStatus = 1 > 2 ? "Hello, we're open" : "Sorry, we've closed"; // conditional expression
  var buyer = name ?? 'user'; // if 'name' null =>. user

  // Loop
  for (int i = 1; i <= 100; i++) {
    print(i);
  }

  // While do
  var i = 1;
  while (i <= 100) {
    print(i);
    i++;
  }

  // Do while
  do {
    print(i);
    i++;
  } while (i <= 100);

  void breakContinue() {
    for (int i = 1; i <= 10; i++) {
      if (i % 3 == 0) {
        continue;
        // break;
      }
      print(i);
    }
  }

  /*
  switch (variable/expression) {
  case value1:
    // do something
    break;
  case value2:
    // do something
    break;
  ...
  ...
  default:
    // do something else
}
  */



}

// Function
void calculateCelcius() {
  // void = just execute it
  stdout.write('Input a Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync());
  var celsius = (fahrenheit - 32) * 5 / 9;
  print('$fahrenheit Fahrenheit = $celsius celsius');
}

// '=>' make it simple
double average(num num1, num num2) => (num1 + num2) / 2;

void greeting() => print('Hello');

void greetNewUser([String name, int age, bool isVerified]) {
  // positional optional parameters
  print('$name, $age, $isVerified');
}

void greetNewUserAgain({String name, int age, bool isVerified}) {
  // named optional parameters.
  print('$name, $age, $isVerified');
}

// named optional parameters.
void greetNewUserAgainAndAgain(
    {String name = 'John Doe', int age = 18, bool isVerified = false}) {
  print('$name, $age, $isVerified');
}