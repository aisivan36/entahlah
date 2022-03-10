import 'package:flutter/material.dart';

class LabelWithDot extends StatelessWidget {
  const LabelWithDot({
    Key? key,
    this.alignment = MainAxisAlignment.end,
    this.colorDot,
    this.colorText,
    this.label,
  }) : super(key: key);
  final Color? colorDot;
  final Color? colorText;
  final String? label;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          Container(
            decoration: BoxDecoration(
                color: colorDot, borderRadius: BorderRadius.circular(6)),
            width: 12,
            height: 12,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            "$label",
            style: TextStyle(color: colorText),
          ),
        ],
      ),
    );
  }
}
