import 'package:colorful_greetings/util/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class ColorRepository {
  final RxList<Color> _history = RxList();
  final ColorManager _colorManager = ColorManager();
  final RxInt selectedColorIndex = (-1).obs;

  void generateColor() {
    final color = _colorManager.generateColor();
    _addColorToHistory(color);
    selectedColorIndex.value = 0;
  }

  void selectColorFromHistory(Color color) {
    final selectedIndex = _history.indexOf(color);
    if (selectedIndex == -1) return;
    selectedColorIndex.value = selectedIndex;
  }

  Stream<Color> observeColor() {
    return CombineLatestStream.combine2(
        _history.stream, selectedColorIndex.stream.startWith(0),
        (colors, selectedIndex) {
      return colors[selectedIndex];
    });
  }

  Stream<List<Color>> observeColorHistory() {
    return _history.stream;
  }

  void _addColorToHistory(Color color) {
    _history.insert(0, color);
  }
}
