import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_models/episode_item_model.dart';

class Api {
  static const String _apiEndpoint = 'lamode.tj';

  http.Client client = http.Client();

  Future<dynamic> getEpisodes() async {
    print('getEpisodes....');
    Uri url = Uri.https(_apiEndpoint, '/json/flutter_nav.php');
    http.Response response = await client.get(url);

    print('status: ${response.statusCode}');

    if (response.statusCode == 200) {
      List<EpisodeItemModel> episodes = (json.decode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();

      return episodes;
    }

    // something wrong happened
    return 'Could not fetch the episodes at this time.';
  }

  Future<dynamic> getEpisode(int id) async {
    Uri url = Uri.https(_apiEndpoint, '/json/flutter_nav.php', {'id': '$id'});
    http.Response response = await client.get(url);

    print(
        'getEpisode | response: ${response.body} statusCode: ${response.statusCode}');

    if (response.statusCode == 200) {
      EpisodeItemModel episode =
          EpisodeItemModel.fromJson(json.decode(response.body));

      return episode;
    }

    // something wrong happened
    return 'Could not fetch the episode $id. Make sure it exists.';
  }
}
