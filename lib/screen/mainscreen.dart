import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:attendance_app/constant/constant.dart';
import 'package:attendance_app/screen/attendance.dart';
import 'package:attendance_app/screen/home.dart';
import 'package:attendance_app/screen/profile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final username;
  const MainScreen({Key? key, required this.username}): super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var bottomNavIndex = 0;
  late AnimationController hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.home,
    Icons.person
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: (bottomNavIndex == 0 ? HomeScreen(username: widget.username) : ProfileScreen(username: widget.username,)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colorAccent,
          child: const Icon(Icons.location_on),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AttendanceScreen()));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          backgroundColor: colorDarkPrimary,
          activeIndex: bottomNavIndex,
          activeColor: colorAccent,
          inactiveColor: colorPrimary,
          notchSmoothness: NotchSmoothness.softEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: 30,
          rightCornerRadius: 30,
          onTap: (index) {
            setState(() {
              bottomNavIndex = index;
            });
          },

        ),
      ),
    );
  }
}
