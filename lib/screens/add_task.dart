import 'package:flutter/material.dart';
import '../bloc/block_exports.dart';
import '../models/task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          const Text('Add Tasks'),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 42,
            width: 345,
            child: TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Add task',
                hintStyle: const TextStyle(
                  fontFamily: 'Mulish',
                  height: 1.25,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xffBEBEBE,
                  ),
                ),
                contentPadding: const EdgeInsets.fromLTRB(14, 12, 0, 12),
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff5EDE99), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightGreen.shade50, width: 1),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var task = Task(title: titleController.text);
                    context.read<TaskBloc>().add(AddTask(task: task));
                    Navigator.pop(context);
                  },
                  child: Text('Add Task')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'))
            ],
          )
        ],
      ),
    );
  }
}
