import 'package:flutter/material.dart';

import '../data_models/episode_item_model.dart';
import '../locator.dart';
import '../services/api.dart';

class EpisodeDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  EpisodeItemModel? _episode;

  EpisodeItemModel? get episode => _episode;

  Future getEpisodeData(int id) async {
    var response = await _api.getEpisode(id);

    if (response is String) {
      _episode = EpisodeItemModel(title: response);
    } else {
      _episode = response;
    }

    notifyListeners();
  }
}
