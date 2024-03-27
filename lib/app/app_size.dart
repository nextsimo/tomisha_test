import 'package:flutter/material.dart';

class AppSize {
  static const double maxMobileWidth = 500;
  static const double maxTabletWidth = 1100;
  static const double maxDesktopWidth = 1920;
  }

extension AppSizeExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get maxMobileWidth => AppSize.maxMobileWidth;
  bool get isMobile => width <= maxMobileWidth;
  bool get isTablet => width >= maxMobileWidth && width < AppSize.maxTabletWidth;
  bool get isDesktop => width >= AppSize.maxTabletWidth;
}
