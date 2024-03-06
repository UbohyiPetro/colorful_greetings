import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/history/ui/history_item_component.dart';
import 'package:colorful_greetings/theme/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryDrawer extends StatelessWidget {
  const HistoryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HistoryController historyController = Get.find<HistoryController>();
    final colors = historyController.historyState.colors;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(
          Spacing.medium,
        ),
        child: Obx(
          () => ListView.builder(
            itemCount: colors.length,
            itemBuilder: (BuildContext context, int index) {
              final color = colors[index];
              return HistoryItemComponent(
                color: color,
                onTap: (Color color) => {
                  historyController.selectColorFromHistory(color)
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
