import 'package:colorful_greetings/home/model/color_item.dart';
import 'package:get/get.dart';

class ColorState {
  static const MAX_COLOR_VALUE = 255;
  Rx<ColorItem> colorItem = ColorItem().obs;

}
