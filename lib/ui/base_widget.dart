import 'package:flutter/material.dart';
import 'package:webprofile/models/models.dart';
import 'package:webprofile/utils/utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxConstraint) {
      var sizinginformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxConstraint.maxWidth, boxConstraint.maxHeight),
      );
      return builder(context, sizinginformation);
    });
  }
}
