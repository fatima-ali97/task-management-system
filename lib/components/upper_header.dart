import 'package:flutter/material.dart';
import 'package:task_management_system/components/customText.dart';
//import 'package:flutter/widgets.dart';

Widget upperHeader(
    String text, BuildContext context, bool isIcon, Widget page) {
  var he = MediaQuery.of(context).size.height;

  return Padding(
    padding: EdgeInsets.only(top: he * 0.03),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.push(context as BuildContext, MaterialPageRoute builder: (context)=> page) ;
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        SizedBox(
          width: he * 0.03,
        ),
        customText(text, 28),
        Expanded(child: Container()),
        isIcon ? const Icon(Icons.search) : Container(),
      ],
    ),
  );
}
