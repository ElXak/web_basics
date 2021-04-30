import 'package:flutter/material.dart';

import '../../data_models/nav_bar_item_model.dart';

class NavBarItemDesktop extends StatelessWidget {
  final NavBarItemModel model;

  const NavBarItemDesktop({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }
}
