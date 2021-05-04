import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../data_models/episode_item_model.dart';
import '../../view_models/episode_list_view_model.dart';
import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  final List<EpisodeItemModel> episodes;

  const EpisodesList({Key? key, required this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodeListViewModel>.reactive(
      viewModelBuilder: () => EpisodeListViewModel(),
      builder: (context, model, child) => Wrap(
        spacing: 30,
        runSpacing: 30,
        children: [
          ...episodes
              .asMap()
              .map((index, episode) => MapEntry(
                  index,
                  GestureDetector(
                    onTap: () => model.navigateToEpisode(index),
                    child: EpisodeItem(model: episode),
                  )))
              .values
              .toList()
        ],
      ),
    );
  }
}
