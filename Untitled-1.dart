import 'dart:io';

// Define an interface
abstract class Animal {
  String speak();
}

// Define a class that implements the Animal interface
class Dog implements Animal {
  @override
  String speak() {
    return "Woof!";
  }
}

// Define a class that overrides an inherited method
class Cat implements Animal {
  @override
  String speak() {
    return "Meow!";
  }
}

// Define a class that demonstrates inheritance
class Pet {
  String name;

  Pet(this.name);
}

// Class Dog inherits from Pet and implements the Animal interface
class DogPet extends Pet with Dog {
  DogPet(String name) : super(name);
}

// Class Cat inherits from Pet and implements the Animal interface
class CatPet extends Pet with Cat {
  CatPet(String name) : super(name);
}

// Method to demonstrate the use of a loop
void printAnimalSounds(List<Pet> pets) {
  for (var pet in pets) {
    print("${pet.name} says: ${pet.speak()}");
  }
}

// Read data from a file to initialize instances of DogPet and CatPet
List<Pet> initializePetsFromFile(String filename) {
  List<Pet> pets = [];
  File(filename).readAsLinesSync().forEach((line) {
    var petData = line.split(',');
    if (petData[0] == 'dog') {
      pets.add(DogPet(petData[1]));
    } else if (petData[0] == 'cat') {
      pets.add(CatPet(petData[1]));
    }
  });
  return pets;
}

// Example usage
void main() {
  var pets = initializePetsFromFile('pets.txt');
  printAnimalSounds(pets);
}