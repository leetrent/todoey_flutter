import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Make coffee'),
    Task(name: 'Read book'),
  ];

  int get taskCount {
    return this.tasks.length;
  }

  void addTask(Task newTask) {
    this.tasks.add(newTask);
  }
}
