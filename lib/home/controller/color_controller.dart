import 'dart:math';

import 'package:colorful_greetings/home/state/color_state.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  final ColorState colorState = ColorState();
  final Random _random = Random();

  @override
  void onInit() {
    generateNewColor();
    super.onInit();
  }

  void generateNewColor() {
    const maxColorValue = ColorState.MAX_COLOR_VALUE;
    final red = _random.nextInt(maxColorValue);
    final green = _random.nextInt(maxColorValue);
    final blue = _random.nextInt(maxColorValue);
    colorState.red.value = red;
    colorState.green.value = green;
    colorState.blue.value = blue;
  }
}