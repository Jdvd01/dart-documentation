void main() {
  // We can use the class with or without new operator
  final wolverine = new Hero(name: 'Logan', power: 'Regeneration');
  final popeye = Hero(name: 'Popeye');

  print(wolverine);
  print(popeye);

  // Printing a specific propertie of the class
  // print(wolverine.name);
  // print(popeye.name);
}

class Hero {
  String name;
  String power;

  // Constructor with positional and required arguments
  // Hero(this.name, this.power);

  // Another way to define a Class Constructor
  // Hero(String parameterName, String parameterPower)
  //     : name = parameterName,
  //       power = parameterPower;

  // Class Constructor with NON-positional and required/optional arguments
  Hero({required this.name, this.power = 'Without power'});

  // Overwriting ".toString()" method
  // to display what we want instead of " Instance of 'Hero' "
  @override
  String toString() {
    return '$name - $power';
  }
}
