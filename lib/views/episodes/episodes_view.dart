import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../data_models/season_detail_model.dart';
import '../../view_models/episodes_view_model.dart';
import '../../widgets/episodes_list/episodes_list.dart';
import '../../widgets/season_details/season_details.dart';

class EpisodesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodesViewModel>.reactive(
      viewModelBuilder: () => EpisodesViewModel(),
      onModelReady: (model) => model.getEpisodes(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 100),
            SeasonDetails(
              details: SeasonDetailsModel(
                title: 'SEASON 1',
                description:
                    'This season covers the absolute basics of Flutter Web Dev to get us up and\nrunning with a basic web app.',
              ),
            ),
            SizedBox(height: 50),
            model.episodes == null
                ? CircularProgressIndicator()
                : EpisodesList(episodes: model.episodes!),
          ],
        ),
      ),
    );
  }
}
