import 'package:flutter/material.dart';
import 'package:koruwel/themes/text_style.dart';

class CustomLink extends StatelessWidget {
  const CustomLink({
    Key? key,
    this.label = 'This is link',
    this.onPressed,
  }) : super(key: key);
  final String label;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(label, style: CustomTextStyle.link),
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
    );
  }
}
