import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
                isChecked: taskItem.isDone,
                taskTitle: taskItem.name,
                checkboxCallback: (bool? checkboxState) {
                  taskData.updateTask(taskItem);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
