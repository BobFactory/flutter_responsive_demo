import 'package:flutter/material.dart';

extension ResponsiveExt on BuildContext  {

  bool isTablet() {
    return MediaQuery.of(this).size.width >= 600;
  }

  bool isDesktop() {
    return MediaQuery.of(this).size.width >= 1200;
  }

  bool isMobile() {
    return MediaQuery.of(this).size.width < 600;
  }
}