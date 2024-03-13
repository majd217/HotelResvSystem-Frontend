import 'package:flutter/widgets.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double statusBarHeight;
  late double safeArea;
  late double navBarHeight;

  SizeConfig(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    statusBarHeight = _mediaQueryData.padding.top;
    navBarHeight = _mediaQueryData.padding.bottom;
    safeArea = screenHeight - statusBarHeight;
  }
}
