import 'dart:io';

void main() {
  print('Welcome to the Dart Calculator!');
  
  // Taking user input for the first number
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  // Taking user input for the operation
  print('Enter the operation (+, -, *, /): ');
  String operation = stdin.readLineSync()!;

  // Taking user input for the second number
  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  // Perform the operation based on the user's choice
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      // Checking for division by zero
      if (num2 == 0) {
        print('Error! Division by zero.');
        return;
      } else {
        result = num1 / num2;
      }
      break;
    default:
      print('Invalid operation!');
      return;
  }

  // Displaying the result
  print('The result of $num1 $operation $num2 is: $result');
}
// explantion of chatgpt about the code
https://chatgpt.com/c/67c524bd-4a6c-8006-8cbb-9c23a6b0ac4e
