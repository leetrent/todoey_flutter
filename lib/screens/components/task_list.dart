import 'package:flutter/material.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(title: 'Task #1', done: true),
        TaskTile(title: 'Task #2', done: false),
        TaskTile(title: 'Task #3', done: true),
      ],
    );
  }
}
