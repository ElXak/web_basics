import 'package:flutter/material.dart';

import '../../data_models/episode_item_model.dart';
import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  final List<EpisodeItemModel> episodes;

  const EpisodesList({Key? key, required this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: [...episodes.map((episode) => EpisodeItem(model: episode))],
    );
  }
}
