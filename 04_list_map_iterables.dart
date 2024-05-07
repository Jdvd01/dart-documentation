void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Original list: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First element: ${numbers.first}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('Iterable to list: ${reversedNumbers.toList()}');
  print('Iterable to list: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int number) => number > 5);
  print('Greater than 5: $numbersGreaterThan5');
  print('Greater than 5 without reps: ${numbersGreaterThan5.toSet()}');
}
