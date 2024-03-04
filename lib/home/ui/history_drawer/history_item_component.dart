import 'package:flutter/material.dart';

class HistoryItemComponent extends StatelessWidget {
  final Color color;

  const HistoryItemComponent({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'R: value, G: value, B: value',
            style: TextStyle(
              color:
                  color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
