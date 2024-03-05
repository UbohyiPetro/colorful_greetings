import 'package:colorful_greetings/theme/spacing.dart';
import 'package:flutter/material.dart';

class HistoryItemComponent extends StatelessWidget {
  final Color color;

  const HistoryItemComponent({Key? key, required this.color}) : super(key: key);

  Color _calculateTextColor() {
    return color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(
          Spacing.small,
        ),
        child: Center(
          child: Text(
            'Red: ${color.red}, Green: ${color.green}, Blue: ${color.blue}',
            style: TextStyle(
              color: _calculateTextColor(),
            ),
          ),
        ),
      ),
    );
  }
}
