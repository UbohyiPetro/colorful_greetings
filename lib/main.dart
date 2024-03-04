import 'package:colorful_greetings/home/ui/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorfulGreetings());
}

class ColorfulGreetings extends StatelessWidget {
  const ColorfulGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
