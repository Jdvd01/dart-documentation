void main() async {
  print('Program start');

  try {
    final value = await httpGet('https://www.example.com');
    print(value);
  } catch (error) {
    print('Error: $error');
  }

  print('End of program');
}

// Async functions always return a Future type
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Error in http request';

  // return 'Tenemos un valor http';
}
