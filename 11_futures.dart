void main() {
  print('Program start');

  httpGet('https://www.example.com')
      .then((value) => {print(value)})
      .catchError((error) => {print('Error: $error')});

  print('End of program');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error in http request';
    // return 'Respuesta de la peticion http';
  });
}
