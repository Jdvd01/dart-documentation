/* 
If you are working locally
and the assert(condition) at line 33 doesn't work,
you need to use the following command:
$ dart --enable-asserts file_name.dart

In this case should be
$ dart --enable-asserts 08_getter_and_setters.dart

Note: The assert(condition) method only runs in development mode. 
It will throw an exception only when the condition is false. 
If the condition is true, nothing happens. Production code ignores it.
*/

void main() {
  final mySquare = Square(side: 10);

  // mySquare.side = 5;

  print('Area: ${mySquare.area}');
}

class Square {
  // Private propertie
  // It can only be used within the Class
  // Private properties are named with _ prefix
  double _side; // side * side

  // Constructor with a required parameter
  // Non-positional parameter
  Square({required double side})
      // assert prevents the negative numbers for side propertie
      : assert(side >= 0, 'side must be a positive number or 0'),
        _side = side;

  // Getter to know the area of the Square
  double get area {
    return _side * _side;
  }

  // Setter to set a new value of the side
  // And it helps to prevent the use of negative numbers
  set side(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'side must be a positive number or 0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
