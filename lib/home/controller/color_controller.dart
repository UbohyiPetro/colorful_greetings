import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/history/mapper/history_mapper.dart';
import 'package:colorful_greetings/home/mapper/color_mapper.dart';
import 'package:colorful_greetings/home/state/color_state.dart';
import 'package:colorful_greetings/util/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  final HistoryController historyController = Get.find<HistoryController>();
  final ColorState colorState = ColorState();
  final ColorManager _colorManager = ColorManager();

  @override
  void onInit() {
    generateNewColor();
    super.onInit();
  }

  Color getCurrentBackgroundColor() {
    return colorState.colorItem.value.toColor();
  }

  Color setTextColorBasedOnItemBackground(Color backgroundColor) {
    return backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
  }

  void generateNewColor() {
    final colorItem = _colorManager.generateColor().toColorItem();
    colorState.colorItem.value = colorItem;
    final historyItem = colorItem.toColor().toHistoryModel();
    historyController.addColorToHistory(historyItem);
  }
}
