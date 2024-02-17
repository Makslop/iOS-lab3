import 'Task.dart';
class ToDoList {
  List<Task> tasks = [];

  void addTask({
    required String title,
    required String description,
  }) {
    final newTask = Task(
      title: title,
      description: description,
    );
    tasks.add(newTask);
  }

  void removeTask(String title) {
    tasks.removeWhere((task) => task.title == title);
  }

  void changeTaskStatus(String title, bool isCompleted) {
    final index = tasks.indexWhere((task) => task.title == title);
    if (index != -1) {
      tasks[index].isCompleted = isCompleted;
    }
  }

  void displayAllTasks() {
    for (var task in tasks) {
      print("Title: ${task.title}, Description: ${task.description}, Completed: ${task.isCompleted ? "Yes" : "No"}");
    }
  }

  void displayCompletedTasks() {
    final completedTasks = tasks.where((task) => task.isCompleted);
    print("Completed Tasks:");
    for (var task in completedTasks) {
      print("Title: ${task.title}, Description: ${task.description}");
    }
  }

  void displayOutstandingTasks() {
    final outstandingTasks = tasks.where((task) => !task.isCompleted);
    print("Outstanding Tasks:");
    for (var task in outstandingTasks) {
      print("Title: ${task.title}, Description: ${task.description}");
    }
  }

  void clearCompletedTasks() {
    tasks.removeWhere((task) => task.isCompleted);
  }
}