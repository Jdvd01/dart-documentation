abstract class Animal {}

// Mamifero
abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin class Fly {
  void fly(name) => print('$name is flying!');
}

mixin class Walk {
  void walk(name) => print('$name is walking!');
}

mixin class Swim {
  void swim(name) => print('$name is swimming!');
}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Fly, Walk {}

class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Walk, Fly, Swim {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Fly, Swim {}

void main() {
  final flipper = Dolphin();
  flipper.swim("flipper");

  final batman = Bat();
  batman.walk("batman");
  batman.fly("batman");

  final psyduck = Duck();
  psyduck.walk("psyduck");
  psyduck.fly("psyduck");
  psyduck.swim("psyduck");
}
