import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_models/episode_item_model.dart';

class Api {
  static const String _apiEndpoint =
      'us-central1-thebasics-2f123.cloudfunctions.net';

  http.Client client = http.Client();

  Future<dynamic> getEpisodes() async {
    // Get user profile for id
    Uri url = Uri.https(_apiEndpoint, '/thebasics/');
    http.Response response = await client.get(url);

    if (response.statusCode == 200) {
      List<EpisodeItemModel> episodes = (json.decode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();

      return episodes;
    }

    // something wrong happened
    return 'Could not fetch the episodes at this time.';
  }
}
