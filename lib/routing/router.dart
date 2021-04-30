import 'package:flutter/material.dart';

import '../views/about/about_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/home/home_view.dart';
import 'route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case EpisodesRoute:
    default:
      return _getPageRoute(EpisodesView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  // return MaterialPageRoute(builder: (context) => child);
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(opacity: animation, child: child));
}
