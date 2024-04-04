// Define a class for a student
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printStudentInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Define a class for a teacher
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printTeacherInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// Third class to create student and teacher objects and call methods to print their information
class School {
  void startSchool() {
    // Create a student object
    var student = Student('marvin', 15, 9);
    // Create a teacher object
    var teacher = Teacher('Mrs. wang', 35, 'Mathematics');

    // Call methods to print information
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create an instance of the School class
  var school = School();
  // Call the startSchool method
  school.startSchool();
}
