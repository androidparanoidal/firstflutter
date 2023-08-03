class Task {
  late final String name;
  late bool isDone;

  Task({required this.name, this.isDone = false}); // set false by default

  // method for toggles done-ness of tasks
  void toggleDone() {
    isDone = !isDone;
  }
}
