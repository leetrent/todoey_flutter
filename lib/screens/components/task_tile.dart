import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {@required this.taskTitle,
      @required this.isChecked,
      @required this.checkboxCallback,
      @required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.taskTitle,
        style: TextStyle(
          decoration: (this.isChecked)
              ? (TextDecoration.lineThrough)
              : (TextDecoration.none),
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: this.isChecked,
        onChanged: this.checkboxCallback,
      ),
      onLongPress: this.longPressCallback,
    );
  }
}
