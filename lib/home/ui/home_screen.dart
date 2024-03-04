import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/history/model/history_model.dart';
import 'package:colorful_greetings/history/ui/history_drawer.dart';
import 'package:colorful_greetings/home/controller/color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.put(ColorController());
    final HistoryController historyController = Get.put(HistoryController());
    return Obx(
      () => GestureDetector(
        onTap: () {
          colorController.generateNewColor();
          final HistoryModel historyItem = HistoryModel(
            red: colorController.colorState.red.value,
            green: colorController.colorState.green.value,
            blue: colorController.colorState.blue.value,
          );
          historyController.addColorToHistory(historyItem);
        },
        child: Scaffold(
          endDrawer: const HistoryDrawer(),
          backgroundColor: colorController.getCurrentBackgroundColor(),
          appBar: AppBar(
            actions: [
              Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
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
            child: Center(
              child: Text(
                'Hello There',
                style: TextStyle(
                  color: colorController
                              .getCurrentBackgroundColor()
                              .computeLuminance() >
                          0.5
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
