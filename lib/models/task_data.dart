import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [
    Task(text: 'Buy bread'),
    Task(text: 'Buy sugar'),
    Task(text: 'Buy milk'),
    Task(text: 'Buy chocolate'),
  ];
  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  void addTask(String newText) {
    final task = Task(text: newText);
    _taskList.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  int get getListLength {
    return _taskList.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
