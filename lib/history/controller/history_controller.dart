import 'package:colorful_greetings/history/model/history_model.dart';
import 'package:colorful_greetings/history/state/history_state.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final HistoryState historyState = HistoryState();

  @override
  void onInit() {
    super.onInit();
  }

  List<HistoryModel> getHistoryList() {
    return historyState.history;
  }

  void addColorToHistory(HistoryModel historyModel) {
    historyState.history.insert(0, historyModel);
  }
}
