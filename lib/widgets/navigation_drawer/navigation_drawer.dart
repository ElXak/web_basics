import 'package:flutter/material.dart';

import '../../routing/route_names.dart';
import 'drawer_item.dart';
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
          // TODO: Combine the DrawerItem with NavBarItem and make it responsive.
          DrawerItem(
              title: 'Episodes',
              navigationPath: EpisodesRoute,
              icon: Icons.videocam),
          DrawerItem(
              title: 'About', navigationPath: AboutRoute, icon: Icons.help),
        ],
      ),
    );
  }
}
