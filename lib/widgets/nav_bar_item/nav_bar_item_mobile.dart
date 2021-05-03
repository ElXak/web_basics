import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

import '../../data_models/nav_bar_item_model.dart';

class NavBarItemMobile extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
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
