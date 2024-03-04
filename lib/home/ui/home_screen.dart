import 'package:flutter/material.dart';

// ignore: public_member_api_docs
class HomeScreen extends StatelessWidget {
  // ignore: public_member_api_docs
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.history,
                ),
              ),
            ),
          ],
          title: const Text("Colorful Greetings"),
        ),
        body: const SafeArea(
          child: Center(
            child: Text('Hello There'),
          ),
        ),
      ),
    );
  }
}
