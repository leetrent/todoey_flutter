import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task newTask) {
    this.tasks.add(newTask);
  }
}
