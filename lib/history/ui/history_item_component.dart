import 'package:colorful_greetings/theme/spacing.dart';
import 'package:colorful_greetings/util/text_color_detect.dart';
import 'package:flutter/material.dart';

class HistoryItemComponent extends StatelessWidget {
  final Color color;
  final Function(Color color) onTap;

  const HistoryItemComponent(
      {Key? key, required this.color, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(color),
      child: Card(
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
                color: color.onBackroundTextColor(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
