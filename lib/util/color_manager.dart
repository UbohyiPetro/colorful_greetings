import 'dart:math';

import 'package:flutter/material.dart';

class ColorManager {
  static const _MAX_COLOR_VALUE = 255;
  final Random _random = Random();

  Color generateColor() {
    final red = _random.nextInt(_MAX_COLOR_VALUE);
    final green = _random.nextInt(_MAX_COLOR_VALUE);
    final blue = _random.nextInt(_MAX_COLOR_VALUE);
    final opacity = double.parse(_random.nextDouble().toStringAsFixed(2));
    final Color newColor = Color.fromRGBO(red, green, blue, opacity);
    return newColor;
  }
}
