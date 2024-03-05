import 'package:colorful_greetings/home/model/color_item.dart';
import 'package:flutter/material.dart';

extension ToColor on ColorItem {
  Color toColor() {
    return Color.fromRGBO(this.red, this.green, this.blue, this.opacity);
  }
}

extension ToColorItem on Color {
  ColorItem toColorItem() {
    return ColorItem(
        red: this.red, green: this.green, blue: this.blue, opacity: this.opacity);
  }
}
