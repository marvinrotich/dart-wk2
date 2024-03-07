void main() {
  // Integers (int)
  int age = 25; 
  print('Age: $age');

  // Floating-point numbers (double)
  double height = 1.75; 
  print('Height: $height meters');

  // Strings (String)
  String name = 'marvin'; 
  print('Name: $name');

  // Lists (List)
  List<int> numbers = [1, 2, 3, 4, 5]; 
  print('Numbers: $numbers');

  // Maps (Map)
  Map<String, dynamic> person = {
    'name': 'marvin',
    'age': 30,
    'height': 1.65,
    'isStudent': true,
  };
  // Represents a collection of key-value pairs
  print('Person: $person');

 

  // Test the program for accuracy
  assert(age is int);
  assert(height is double);
  assert(name is String);
  assert(numbers is List<int>);
  assert(person is Map<String, dynamic>);
}
