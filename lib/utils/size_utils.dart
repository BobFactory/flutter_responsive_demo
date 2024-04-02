

import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get width => size.width;
  double get height => size.height;

  double widthPercent(int percent) => width * percent/100;
  double heightPercent(int percent) => height * percent/100;

}
