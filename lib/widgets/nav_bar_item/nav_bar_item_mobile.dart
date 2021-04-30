import 'package:flutter/material.dart';

import '../../data_models/nav_bar_item_model.dart';

class NavBarItemMobile extends StatelessWidget {
  final NavBarItemModel model;

  const NavBarItemMobile({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(model.iconData),
          SizedBox(width: 30),
          Text(
            model.title,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
