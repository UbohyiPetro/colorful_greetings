import 'package:colorful_greetings/home/controller/color_controller.dart';
import 'package:colorful_greetings/home/ui/history_drawer/history_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.put(ColorController());
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
