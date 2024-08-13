import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task_management_system/models/Task_model.dart';
import 'package:task_management_system/widgets/constant.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index]),
          itemCount: taskList.length,
        ));
  }
}

Widget _buildAddTask() {
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: const Radius.circular(20),
    color: Colors.grey.shade600,
    strokeWidth: 2,
    dashPattern: const [10, 10],
    child: Center(
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.grey.shade600,
      ),
    ),
  );
}

Widget _buildTask(BuildContext context, Task taskList) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Container(), //DetailPage(taskList)
        ),
      );
    },
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: taskList.bgColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            taskList.icon,
            color: taskList.iconColor,
            size: 30,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            taskList.title.toString(),
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildTaskStatus(
                  KWhite, taskList.iconColor!, '${taskList.left} left'),
              const SizedBox(
                width: 5,
              ),
              _buildTaskStatus(
                  KWhite, taskList.iconColor!, '${taskList.done} done'),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _buildTaskStatus(Color bgColor, Color txtColor, String txt) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration:
        BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(10)),
    child: Text(
      txt,
      style:
          TextStyle(color: txtColor, fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );
}
