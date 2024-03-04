import 'package:colorful_greetings/home/ui/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorfulGreetings());
}

// ignore: public_member_api_docs
class ColorfulGreetings extends StatelessWidget {
  // ignore: public_member_api_docs
  const ColorfulGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
