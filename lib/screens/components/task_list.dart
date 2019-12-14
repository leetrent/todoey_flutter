import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Walk the boys'),
    Task(name: 'Feed the boys'),
    Task(name: 'Take the boys to daycare')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: this.tasks[index].name,
          isChecked: this.tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              this.tasks[index].isDone = checkboxState;
            });
          },
        );
      },
      itemCount: this.tasks.length,
    );
  }
}
