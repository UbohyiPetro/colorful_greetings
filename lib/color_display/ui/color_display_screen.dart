import 'package:colorful_greetings/color_display/controller/color_controller.dart';
import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/history/ui/history_drawer.dart';
import 'package:colorful_greetings/theme/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorDisplayScreen extends StatelessWidget {
  const ColorDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryController());
    final ColorController colorController = Get.put(ColorController());
    return Obx(
      () => Scaffold(
        endDrawer: const HistoryDrawer(),
        backgroundColor: colorController.colorState.color.value,
        appBar: AppBar(
          actions: [
            Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: Spacing.small,
                  ),
                  child: IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: const Icon(
                      Icons.history,
                    ),
                  ),
                );
              },
            )
          ],
          title: const Text("Colorful Greetings"),
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: colorController.generateColor,
            child: Container(
              color: Colors.transparent,
              child: Center(
                child: Text(
                  'Hello There',
                  style: TextStyle(
                    color: colorController.colorState.textColor.value,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
