class FunctionalProgramming {
  /*
    Functions are first-class citizen and can be higher-order
    or should i say.. IT COULD BE ANYWHERE.
    inside a variabel, function, etc
  */

  // Pure Function
  // a value returned by function is depend on given value in parameter
  int sum(int num1, int num2) {
    return num1 + num2;
  }

  // Recursion
  // iteration by calling function from function itself until reach the case.
  int fibonacci(n) {
    if (n <= 0) {
      return 0;
    } else if (n == 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }

  // High order function. Add function as parameter
  void myHigherOrderFunction(String message, int Function(int num1, int num2) myFunction) {
    print(message);
    print(myFunction(3, 4)); // sum(3, 4)    // return 3 + 4
  }


  void main() {
    // Immutable variable
    // variabel value cannot be changed
    // if you want to change it then create a new variabel
    var x = 5;
    x = x + 1; // Not immutable variabel

    // first-class citizen
    var sum = (int num1, int num2) {
      return num1 + num2;
    };

    // more simplified
    var sumAgain = (int num1, int num2) => num1 + num2;

    // function
    Function printLambda = () {
      print('This is lambda function');
    };

    // more simplified
    Function printLambdaAgain = () => print('This is lambda function');

    print(sum(1, 2));
    print(sumAgain(1, 2));
    printLambda();
    printLambdaAgain(1, 2);

    // Caling high order function
    // Option 1
    Function doSum = (int num1, int num2) => num1 + num2;
    myHigherOrderFunction('Hello', sum);

    // Option 2
    myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);

    Function calculate(base) {
      var count = 1;
      return () => print("Value is ${base + count++}");
    }

    // Closure
    var closureExample = calculate(2);
    closureExample(); // value is 3
    closureExample(); // value is 4
    // As long as the function still one context.

  }
}