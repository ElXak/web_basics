import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/episode_details_view_model.dart';

class EpisodeDetails extends StatelessWidget {
  final int id;

  const EpisodeDetails({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodeDetailsViewModel>.reactive(
      viewModelBuilder: () => EpisodeDetailsViewModel(),
      onModelReady: (model) => model.getEpisodeData(id),
      builder: (context, model, child) => Center(
        child: Column(
          children: [
            model.episode == null
                ? Container()
                : SizedBox(
                    height: 320,
                    child: Image.network(model.episode!.imageUrl!,
                        fit: BoxFit.cover),
                  ),
            model.episode == null
                ? CircularProgressIndicator()
                : Text(
                    model.episode!.title,
                    style: TextStyle(fontSize: 60),
                  ),
          ],
        ),
      ),
    );
  }
}
