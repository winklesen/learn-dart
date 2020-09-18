// Future
// Do something Asynchronously
// There are 4 state
// - Uncompleted
// - Completed with data
// - Completed with error
// - When Completed

// Create asynchronus function like Synchronus
// add 'async' after function name
void main(List<String> arguments) async {
  // 1.
  print('Getting your order...'); // uncompleted

  // 2.
  try {
    // completed with data
    var order = await getOrder(); // add 'await' to make it look like Synchronus
    print('You order: $order');
  } catch (error) {
    // completed with error
    print('Sorry $error');
  } finally {
    // after task complete
    print('Thank you');
  }
}

void caseTwo() {
  // 2.
  getOrder().then((value) {
    // completed with data
    print('You order: $value');
  }).catchError((error) {
    // completed with error
    print('Sorry. $error');
  }).whenComplete(() {
    // after task complete
    print('Thank you');
  });

  // 1.
  print('Getting your order...'); // uncompleted
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    // delay function call
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}
