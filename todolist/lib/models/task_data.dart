import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Купить молоко'),
    Task(name: 'Выучить греческий'),
    Task(name: 'Заработать миллион'),
    Task(name: 'Встать в 4 утра'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
