import 'package:flutter/material.dart';

import 'task_checkbox.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: (this.isChecked)
              ? (TextDecoration.lineThrough)
              : (TextDecoration.none),
        ),
      ),
      trailing: TaskCheckbox(
          checkboxState: this.isChecked,
          toggleCheckboxState: (bool checkboxState) {
            setState(() {
              this.isChecked = checkboxState;
            });
          }),
    );
  }
}
