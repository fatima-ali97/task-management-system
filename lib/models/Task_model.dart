import 'package:flutter/material.dart';
import 'package:task_management_system/widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;

  num? left;
  num? done;

  bool isLast;
  Task(
      {this.icon,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
          icon: Icons.person_rounded,
          title: 'Personal',
          bgColor: KBlueLight,
          iconColor: KBlueDark,
          btnColor: KBlue,
          left: 3,
          done: 7,
          isLast: true),
      Task(
          icon: Icons.person_rounded,
          title: 'Personal',
          bgColor: KBlueLight,
          iconColor: KBlueDark,
          btnColor: KBlue,
          left: 1,
          done: 9,
          isLast: false),
      Task(
          icon: Icons.work,
          title: 'Work',
          bgColor: KYellowLight,
          iconColor: KYellowDark,
          btnColor: KYellow,
          left: 5,
          done: 3,
          isLast: false),
      Task(
          icon: Icons.flag_rounded,
          title: '2024 Goals',
          bgColor: KRedLight,
          iconColor: KRedDark,
          btnColor: KRed,
          left: 1,
          done: 4,
          isLast: false),
      Task(
          icon: Icons.chair_rounded,
          title: 'House Chores',
          bgColor: KBlueLight,
          iconColor: KBlueDark,
          btnColor: KBlue,
          left: 8,
          done: 2,
          isLast: false)
    ];
  }
}
