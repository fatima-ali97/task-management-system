// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task_management_system/widgets/constant.dart';

Widget customText(String text, double size) {
  return Text(
    text,
    style: TextStyle(fontSize: size, color: KDark, fontWeight: FontWeight.bold),
  );
}
