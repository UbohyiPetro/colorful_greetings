import 'package:colorful_greetings/util/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorRepository {
  final RxList<Color> _history = RxList();
  final ColorManager _colorManager = ColorManager();

  void generateColor() {
    final color = _colorManager.generateColor();
    _addColorToHistory(color);
  }

  Stream<Color> observeColor() {
    return _history.stream.asyncMap((colors) {
      return colors[0];
    });
  }

  Stream<List<Color>> observeColorHistory() {
    return _history.stream;
  }


  void _addColorToHistory(Color color) {
    _history.insert(0, color);
  }
}
