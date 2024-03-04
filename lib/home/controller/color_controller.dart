import 'dart:math';

import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/home/state/color_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  final HistoryController historyController = Get.find<HistoryController>();
  final ColorState colorState = ColorState();
  final Random _random = Random();

  @override
  void onInit() {
    generateNewColor();
    super.onInit();
  }

  Color getCurrentBackgroundColor() {
    final red = colorState.red.value;
    final green = colorState.green.value;
    final blue = colorState.blue.value;
    final Color backgroundColor = Color.fromRGBO(red, green, blue, 1.0);
    return backgroundColor;
  }

  Color setTextColorBasedOnItemBackground(Color backgroundColor) {
    return backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
  }

  void generateNewColor() {
    const maxColorValue = ColorState.MAX_COLOR_VALUE;
    final red = _random.nextInt(maxColorValue);
    final green = _random.nextInt(maxColorValue);
    final blue = _random.nextInt(maxColorValue);
    colorState.red.value = red;
    colorState.green.value = green;
    colorState.blue.value = blue;
    final historyItem =
        historyController.generateHistoryModelFromColor(red, green, blue);
    historyController.addColorToHistory(historyItem);
  }
}
