import 'package:colorful_greetings/core/repository/color_repository.dart';
import 'package:colorful_greetings/history/state/history_state.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final HistoryState historyState = HistoryState();
  final ColorRepository _colorRepository = Get.find();

  @override
  void onInit() {
    _observeColorHistory();
    super.onInit();
  }

  void _observeColorHistory() {
    _colorRepository.observeColorHistory().listen((colorHistory) {
      historyState.colors.value = colorHistory.map((color) => color).toList();
    });
  }
}
