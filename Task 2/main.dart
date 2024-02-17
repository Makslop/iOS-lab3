import 'ToDoList.dart';
void main() {
  final toDoList = ToDoList();

  toDoList.addTask(title: "Task first", description: "Go shopping");
  toDoList.addTask(title: "Task second", description: "Clean laptop");
  toDoList.addTask(title: "Task third", description: "Feed the fish");
  print("All Tasks:");
  toDoList.displayAllTasks();
  print("");

  toDoList.changeTaskStatus("Task first", true);

  toDoList.displayCompletedTasks();
  print("");

  toDoList.displayOutstandingTasks();
  print("");

  toDoList.clearCompletedTasks();

  print("All Tasks after clearing completed tasks:");
  toDoList.displayAllTasks();
}