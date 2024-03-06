import 'package:flutter/material.dart';

extension OnBackroundTextColor on Color {
  Color onBackroundTextColor() {
    return this.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}
