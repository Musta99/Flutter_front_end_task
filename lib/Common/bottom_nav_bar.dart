import 'package:flutter/material.dart';
import 'package:test_project/Screens/passions.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int _currentIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xffF3F3F3),
      type: BottomNavigationBarType.fixed,
      elevation: 1,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      selectedIconTheme: IconThemeData(
        color: Color(0xffe94057),
      ),
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: ImageIcon(
            size: 19,
            AssetImage(
              "Images/cards.png",
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: ImageIcon(
            size: 19,
            AssetImage("Images/indicator.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: ImageIcon(
            size: 19,
            AssetImage("Images/message.png"),
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: ImageIcon(
            size: 19,
            AssetImage("Images/people.png"),
          ),
        ),
      ],
    );
  }
}
