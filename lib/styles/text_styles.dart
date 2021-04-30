import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
  return TextStyle(
      fontSize: titleSize, fontWeight: FontWeight.w800, height: 0.9);
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.mobile ? 16 : 21;
  return TextStyle(fontSize: descriptionSize, height: 1.7);
}
