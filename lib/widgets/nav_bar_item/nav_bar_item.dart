import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../data_models/nav_bar_item_model.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';
import 'nav_bar_item_desktop.dart';
import 'nav_bar_item_mobile.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData? iconData;

  const NavBarItem(this.title, this.navigationPath, {this.iconData});

  @override
  Widget build(BuildContext context) {
    NavBarItemModel model = NavBarItemModel(
        title: title, navigationPath: navigationPath, iconData: iconData);

    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICE SHOULD ONLY BE USED FROM A VIEW_MODEL
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: ScreenTypeLayout(
        tablet: NavBarItemDesktop(model: model),
        mobile: NavBarItemMobile(model: model),
      ),
    );
  }
}
