import 'package:colorful_greetings/core/repository/color_repository.dart';
import 'package:colorful_greetings/home/state/color_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  final ColorState colorState = ColorState();
  final ColorRepository _colorRepository = Get.find();

  @override
  void onInit() {
    _observeColor();
    super.onInit();
  }

  void generateColor() {
    _colorRepository.generateColor();
  }

  void _observeColor() {
    _colorRepository.observeColor().listen((color) {
      colorState.color.value = color;
      colorState.textColor.value = _calculateTextColor();
    });
  }

  Color _calculateTextColor() {
    final backgroundColor = colorState.color.value;
    return backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
  }
}
