import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task taskToUpdate = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskToUpdate.name,
              isChecked: taskToUpdate.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(taskToUpdate);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
