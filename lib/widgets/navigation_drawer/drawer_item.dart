import 'package:flutter/material.dart';

import '../navigation_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.navigationPath,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title, navigationPath),
        ],
      ),
    );
  }
}
