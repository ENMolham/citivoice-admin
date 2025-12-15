import 'package:flutter/widgets.dart';

extension ScreenSizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenAspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;

  double scaleFont(double designSize) {
    double screenFactor = screenWidth / 440;
    double size = designSize * screenFactor;
    size = MediaQuery.textScalerOf(this).scale(size);

    return size;
  }

  double scaleIcon(double designSize) {
    double size = designSize * (screenWidth / 440);
    size = MediaQuery.textScalerOf(this).scale(size);
    return size;
  }
}
