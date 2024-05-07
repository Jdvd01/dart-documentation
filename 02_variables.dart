void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;

  // Defining List of Strings
  final abilities = <String>['impostor'];
  final List<String> sprites = ['ditto/front.png', 'ditto/back.png'];

  // dynamic == null (dynamic type accepts null type)
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4];
  errorMessage = {1, 2, 3, 4};
  errorMessage = () => true;
  errorMessage = null;

  // Multi-line string with """   """
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}
