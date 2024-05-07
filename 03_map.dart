void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  // print('My pokemon: $pokemon');
  // print('Name: ${pokemon['name']}');
  // print('Sprites: ${pokemon['sprites']}');

  // print('Back: ${pokemon['sprites'][2]}');
  // print('Front: ${pokemon['sprites'][1]}');
  print("""
  My pokemon: $pokemon');
  Name: ${pokemon['name']}');
  Sprites: ${pokemon['sprites']}');

  Back: ${pokemon['sprites'][2]}
  Front: ${pokemon['sprites'][1]} 
  """);
}
