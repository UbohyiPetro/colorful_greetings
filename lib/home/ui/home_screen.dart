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
        endDrawer: Text("DRAWER"),
        backgroundColor: Colors.red,
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
        body: const SafeArea(
          child: Center(
            child: Text('Hello There'),
          ),
        ),
      ),
    );
  }
}
