import 'package:flutter/material.dart';

import '../../routing/route_names.dart';
import '../nav_bar_item/nav_bar_item.dart';
import 'nav_bar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes', EpisodesRoute),
              SizedBox(width: 60),
              NavBarItem('About', AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}
