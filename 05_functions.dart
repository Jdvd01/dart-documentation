void main() {
  print(greetEveryone());

  print('Add: ${addTwoNumbers(10, 20)}');
  print('Add: ${addTwoNumbersOptional(10)}');
  print(
      'greetPerson with two parameter: ${greetPerson(name: 'Jose', message: 'Hi')}');
  print('greetPerson with one parameter: ${greetPerson(name: 'Jose')}');
}

String greetEveryone() => 'Hello everyone!';

// Both parameters are required and there are positional
int addTwoNumbers(int a, int b) => a + b;

// Parameter "b" is optional in this function
int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

// Parameter name is required but message is optional and there are no positional ({})
String greetPerson({required String name, String message = 'Hello'}) {
  return '$message, $name';
}
