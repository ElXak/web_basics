import 'package:flutter/material.dart';
import 'package:web_basics/routing/route_names.dart';

import '../locator.dart';
import '../services/navigation_service.dart';

class EpisodeListViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToEpisode(int index) {
    _navigationService
        .navigateTo(EpisodeDetailsRoute, queryParams: {'id': index.toString()});
  }
}
