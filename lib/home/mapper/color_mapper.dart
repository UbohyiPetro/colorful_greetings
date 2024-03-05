import 'package:colorful_greetings/home/model/color_item.dart';
import 'package:flutter/material.dart';

extension ToColor on ColorItem {
  Color toColor() {
    return Color.fromRGBO(this.red, this.green, this.blue, 0.5);
  }
}
