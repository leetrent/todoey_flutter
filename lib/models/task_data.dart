import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
//    Task(name: 'Make coffee'),
//    Task(name: 'Read book'),
//    Task(name: 'Do homework'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return this._tasks.length;
  }

  void addTask(String taskTitle) {
    this._tasks.add(Task(name: taskTitle));
    super.notifyListeners();
  }
}
