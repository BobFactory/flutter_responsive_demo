

import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get width => size.width;
  double get height => size.height;

  double widthPercent(double percent) => width * percent/100;
  double heightPercent(double percent) => height * percent/100;

}
