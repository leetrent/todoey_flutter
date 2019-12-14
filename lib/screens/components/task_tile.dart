import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile(
      {@required this.taskTitle,
      @required this.isChecked,
      @required this.checkboxCallback});

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
    );
  }
}
