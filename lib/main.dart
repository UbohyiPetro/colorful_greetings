import 'package:colorful_greetings/history/controller/history_controller.dart';
import 'package:colorful_greetings/home/controller/color_controller.dart';
import 'package:colorful_greetings/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ColorfulGreetings());
}

class ColorfulGreetings extends StatelessWidget {
  const ColorfulGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HistoryController());
    Get.put(ColorController());
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
