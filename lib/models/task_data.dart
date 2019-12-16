import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task newTask) {
    this.tasks.add(newTask);
  }
}
