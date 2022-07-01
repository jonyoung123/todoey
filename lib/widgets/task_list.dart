import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.taskList[index];
          return TasksTile(
            text: task.text,
            isChecked: task.isDone,
            onLongPress: () {
              taskData.deleteTask(task);
            },
            onChanged: (newValue) {
              taskData.updateTask(task);
            },
          );
        },
        itemCount: taskData.getListLength,
      );
    });
  }
}
