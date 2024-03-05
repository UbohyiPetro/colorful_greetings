import 'package:colorful_greetings/core/repository/color_repository.dart';
import 'package:colorful_greetings/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ColorRepository());
  runApp(const ColorfulGreetings());
}

class ColorfulGreetings extends StatelessWidget {
  const ColorfulGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
