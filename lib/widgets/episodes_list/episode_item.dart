import 'package:flutter/material.dart';

import '../../data_models/episode_item_model.dart';
import '../../extensions/hover_extensions.dart';

class EpisodeItem extends StatelessWidget {
  final EpisodeItemModel model;

  const EpisodeItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              child: Image.network(model.imageUrl, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    softWrap: true,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${model.duration} minutes',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ).showCursorOnHover;
  }
}
