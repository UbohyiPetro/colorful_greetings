import 'package:colorful_greetings/home/ui/history_drawer/history_item_component.dart';
import 'package:flutter/material.dart';

class HistoryDrawer extends StatelessWidget {
  const HistoryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            HistoryItemComponent(color: Colors.black,),
            HistoryItemComponent(color: Colors.white,),
            HistoryItemComponent(color: Colors.pink,),
            HistoryItemComponent(color: Colors.amberAccent,),
          ],
        ),
      ),
    );
  }
}
