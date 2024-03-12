import 'package:flutter/material.dart';
import 'package:todo_mate/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTile: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallBack: (checkboxState) {
                  taskData.updateTask(task);
              },
              longpressCallback: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
