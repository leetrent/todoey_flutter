import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({@required this.title, @required this.done});
  final String title;
  final bool done;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      trailing: Checkbox(
        value: this.done,
      ),
    );
  }
}
