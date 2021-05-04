import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../data_models/nav_bar_item_model.dart';

class NavBarItemDesktop extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }
}
