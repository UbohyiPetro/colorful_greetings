import 'package:colorful_greetings/home/model/color_item.dart';
import 'package:get/get.dart';

class ColorState {
  Rx<ColorItem> colorItem = ColorItem().obs;
}
