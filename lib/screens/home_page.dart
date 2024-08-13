import 'package:flutter/material.dart';
import 'package:task_management_system/screens/profile_page.dart';
import 'package:task_management_system/widgets/constant.dart';
import 'package:task_management_system/widgets/premium.dart';
import 'package:task_management_system/widgets/tasks.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0; // for the setState func

  final List<Widget> _pages = const [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeBar(),
      bottomNavigationBar: bottomNavigation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: KDark,
        child: Icon(
          Icons.add,
          color: KLightGrey,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
    );
  }

  Container bottomNavigation() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 20,
                spreadRadius: 5)
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: KWhite,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.shade800,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                  size: 30,
                ),
                label: 'account')
          ],
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
        ),
      ),
    );
  }

  AppBar homeBar() {
    return AppBar(
      backgroundColor: KWhite,
      elevation: 0,
      title: Row(
        children: [
          Container(
              width: 45,
              height: 40,
              margin: const EdgeInsets.only(right: 10, top: 5),
              decoration: BoxDecoration(
                  color: KLightGrey, borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/pfp-rem.png',
                  //fit: BoxFit.contain,
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Hello, fatema",
            style: TextStyle(
                fontSize: 20, color: KDark, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey.shade600,
              size: 30,
            )),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(
                fontSize: 28,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Tasks())
      ],
    );
  }
}
