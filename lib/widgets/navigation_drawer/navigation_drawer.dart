import 'package:flutter/material.dart';

import '../../routing/route_names.dart';
import '../nav_bar_item/nav_bar_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          NavBarItem('Episodes', EpisodesRoute, iconData: Icons.videocam),
          NavBarItem('About', AboutRoute, iconData: Icons.help),
        ],
      ),
    );
  }
}
