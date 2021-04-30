import 'package:flutter/material.dart';

import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/home/home_view.dart';
import 'route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
    default:
      return _getPageRoute(EpisodesView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
