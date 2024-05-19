class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print("Student Information:");
    print("Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print("Teacher Information:");
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

class School {
  Student? student;
  Teacher? teacher;

  void createStudent(String name, int age, String gradeLevel) {
    student = Student(name, age, gradeLevel);
  }

  void createTeacher(String name, int age, String subject) {
    teacher = Teacher(name, age, subject);
  }

  void printInfo() {
    if (student != null) {
      student!.printInfo();
    }
    if (teacher != null) {
      teacher!.printInfo();
    }
  }
}

void main() {
  School school = School();
  school.createStudent("Alice", 15, "10th");
  school.createTeacher("Mr. Smith", 35, "Math");
  school.printInfo();
}
