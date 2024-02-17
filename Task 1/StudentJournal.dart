import 'Student.dart';

class StudentJournal {
  List<Student> students = [];

  void addStudent({
    required String firstName,
    required String lastName,
    required double averageGrade,
  }) {
    students.add(Student(
      firstName: firstName,
      lastName: lastName,
      averageGrade: averageGrade,
    ));
  }

  void removeStudent(String firstName, String lastName) {
    students.removeWhere(
            (student) => student.firstName == firstName && student.lastName == lastName);
  }

  void displayStudentsInfo() {
    for (var student in students) {
      print("Name: ${student.firstName} ${student.lastName}, Average Grade: ${student.averageGrade}");
    }
  }

  void listStudentsByDescendingAverageGrade() {
    students.sort((a, b) => b.averageGrade.compareTo(a.averageGrade));
    for (var student in students) {
      print("Name: ${student.firstName} ${student.lastName}, Average Grade: ${student.averageGrade}");
    }
  }

  double findAverageScore() {
    var totalGrades =
    students.fold(0.0, (prev, student) => prev + student.averageGrade);
    return totalGrades / students.length;
  }

  Student? findStudentWithHighestAverageGrade() {
    return students.isNotEmpty
        ? students.reduce((a, b) =>
    a.averageGrade > b.averageGrade ? a : b)
        : null;
  }
}
