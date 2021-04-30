import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../data_models/season_detail_model.dart';
import '../../styles/text_styles.dart';

class SeasonDetailsDesktop extends StatelessWidget {
  final SeasonDetailsModel details;

  const SeasonDetailsDesktop({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  details.title,
                  style: titleTextStyle(sizingInformation.deviceScreenType),
                ),
                SizedBox(width: 50),
                Text(
                  details.description,
                  style:
                      descriptionTextStyle(sizingInformation.deviceScreenType),
                ),
              ],
            ));
  }
}
