import 'package:flutter/material.dart';

class PinDot extends StatelessWidget {
  const PinDot({Key? key, this.color = Colors.grey}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
