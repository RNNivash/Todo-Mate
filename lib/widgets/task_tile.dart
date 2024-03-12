import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool)? checkboxCallBack;
  final VoidCallback? longpressCallback;

  TaskTile({
    required this.taskTile,
    required this.isChecked,
    required this.checkboxCallBack,
    required this.longpressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        taskTile,
        style: TextStyle(
          color: Color(0xff307FEC),
          fontSize: 30.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          if (checkboxCallBack != null) {
            checkboxCallBack!(newValue!);
          }
        },
      ),
    );
  }
}

