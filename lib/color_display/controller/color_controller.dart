import 'package:colorful_greetings/color_display/state/color_state.dart';
import 'package:colorful_greetings/core/repository/color_repository.dart';
import 'package:colorful_greetings/util/text_color_detect.dart';
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
      colorState.textColor.value = color.onBackroundTextColor();
    });
  }
}
