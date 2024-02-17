import 'StudentJournal.dart';
void main() {
  var journal = StudentJournal();

  journal.addStudent(firstName: "Maksat", lastName: "Bagdaulet", averageGrade: 85.5);
  journal.addStudent(firstName: "Aibek", lastName: "Shynazbek", averageGrade: 92.0);
  journal.addStudent(firstName: "Erassyl", lastName: "Aitpayev", averageGrade: 78.3);

  print("All Students:");
  journal.displayStudentsInfo();
  print("");

  print("Students by descending GPA:");
  journal.listStudentsByDescendingAverageGrade();
  print("");

  var averageScore = journal.findAverageScore();
  print("Average score of all students: $averageScore");

  var studentWithHighestGPA = journal.findStudentWithHighestAverageGrade();
  if (studentWithHighestGPA != null) {
    print("Student with the highest GPA:");
    print(
        "Name: ${studentWithHighestGPA.firstName} ${studentWithHighestGPA.lastName}, Average Grade: ${studentWithHighestGPA.averageGrade}");
  }
}
