void main() async {
  print('Program start');

  try {
    final value = await httpGet('https://www.example.com');
    print('All good: $value');
  } on Exception catch (error) {
    print('We have an Exception: $error');
  } catch (error) {
    print('Oh no: $error');
  } finally {
    print('End of try/catch');
  }

  print('End of program');
}

// Async functions always return a Future type
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No parameters in the url');

  // throw 'Error en la peticion';

  // return 'Tenemos un valor http';
}
