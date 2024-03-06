import 'package:colorful_greetings/core/repository/color_repository.dart';
import 'package:colorful_greetings/history/state/history_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final HistoryState historyState = HistoryState();
  final ColorRepository _colorRepository = Get.find();

  @override
  void onInit() {
    _observeColorHistory();
    super.onInit();
  }

  void selectColorFromHistory(Color color) {
    _colorRepository.selectColorFromHistory(color);
  }

  void _observeColorHistory() {
    _colorRepository.observeColorHistory().listen((colorHistory) {
      historyState.colors.value = colorHistory.map((color) => color).toList();
    });
  }
}
