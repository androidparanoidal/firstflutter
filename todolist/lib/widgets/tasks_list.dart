import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todolist/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: '1'),
    Task(name: '2'),
    Task(name: '3'),
    Task(name: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
