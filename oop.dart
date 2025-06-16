// Abstraction: Abstract class with abstract method
abstract class Animal {
  void makeSound(); // Abstract method
}

// Encapsulation: Class with private variable and controlled access
class Person {
  String _name; // Private variable

  Person(this._name);

  // Getter
  String get name => _name;

  // Setter
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  void introduce() {
    print("Hi, my name is $_name.");
  }
}

// Inheritance: Dog and Cat inherit from Animal
class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Polymorphism: Both Dog and Cat override makeSound differently

void main() {
  // Encapsulation
  var person = Person("Alice");
  person.introduce();
  person.name = "Bob";
  print("Updated name: ${person.name}");

  // Inheritance & Polymorphism
  List<Animal> animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.makeSound(); // Calls the overridden method
  }
}