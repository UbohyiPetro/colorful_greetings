import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/history/ui/history_item_component.dart';
import 'package:colorful_greetings/home/theme/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryDrawer extends StatelessWidget {
  const HistoryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HistoryController historyController = Get.find<HistoryController>();
    final history = historyController.historyState.history;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(
          Spacing.medium,
        ),
        child: ListView.builder(
          itemCount: history.length,
          itemBuilder: (BuildContext context, int index) {
            final historyItem = history[index];
            final historyItemColor = Color.fromRGBO(
              historyItem.red,
              historyItem.green,
              historyItem.blue,
              1.0,
            );
            return HistoryItemComponent(color: historyItemColor);
          },
        ),
      ),
    );
  }
}
