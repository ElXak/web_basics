import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../data_models/season_detail_model.dart';
import '../../styles/text_styles.dart';

class SeasonDetailsDesktop extends ViewModelWidget<SeasonDetailsModel> {
  @override
  Widget build(BuildContext context, SeasonDetailsModel details) {
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
