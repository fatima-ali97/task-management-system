// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:task_management_system/screens/home_page.dart';
import 'package:task_management_system/screens/settings.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: he * 0.03, bottom: he * 0.03),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ));
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        size: 30,
                      )),
                  SizedBox(
                    width: he * 0.01,
                  )
                ],
              ),
            ),
            SizedBox(
              height: he * 0.13,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const settingsPage()));
              },
              child: const Text(
                'Settings',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            const Text(
              'Terms & conditions',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            /*GestureDetector(
              onTap: () {
                SystemNavigator.pop() ;
              },
              child: const Text(
                'Log out',
                style: TextStyle(fontSize: 30),
              ),
            ),*/
          ],
        ),
      ),
    ));
  }
}
