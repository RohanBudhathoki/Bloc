// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class UpdateTasks extends TaskEvent {
  final Task task;
  const UpdateTasks({
    required this.task,
  });
  @override
  List<Object> get props => [];
}

class AddTask extends TaskEvent {
  final Task task;
  const AddTask({
    required this.task,
  });
  @override
  List<Object> get props => [];
}

class DeleteTask extends TaskEvent {
  final Task task;
  const DeleteTask({
    required this.task,
  });
  @override
  List<Object> get props => [];
}
