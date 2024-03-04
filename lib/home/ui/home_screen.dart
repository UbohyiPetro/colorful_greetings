import 'package:colorful_greetings/history/ui/history_drawer.dart';
import 'package:colorful_greetings/home/controller/color_controller.dart';
import 'package:colorful_greetings/home/theme/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find<ColorController>();
    return Obx(
      () => GestureDetector(
        onTap: colorController.generateNewColor,
        child: Scaffold(
          endDrawer: const HistoryDrawer(),
          backgroundColor: colorController.getCurrentBackgroundColor(),
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
