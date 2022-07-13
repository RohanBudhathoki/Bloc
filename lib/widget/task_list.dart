import 'package:flutter/material.dart';

import 'package:flutter_tasks_app/models/task.dart';

import '../bloc/block_exports.dart';

class TaskList extends StatelessWidget {
  TaskList({
    Key? key,
    required this.taskList,
  }) : super(key: key);
  List<Task> taskList = [
    Task(title: 'Task 1'),
    Task(title: 'Task 2'),
    Task(title: 'Task 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            var task = taskList[index];

            return ListTile(
              onLongPress: () {
                context.read<TaskBloc>().add(DeleteTask(task: task));
              },
              title: Text(task.title),
              trailing: Checkbox(
                value: task.isDone,
                onChanged: (value) {
                  context.read<TaskBloc>().add(UpdateTasks(task: task));
                },
              ),
            );
          }),
    );
  }
}
