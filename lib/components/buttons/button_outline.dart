import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({
    Key? key,
    required this.prefixIcon,
    required this.suffixIcon,
    this.onPressed,
    this.height = 32,
    this.label = 'Button',
    this.color = Colors.transparent,
    this.textColor = Colors.white,
    this.borderRadius = 8,
  }) : super(key: key);

  final double height;
  final Widget prefixIcon;
  final String label;
  final Widget suffixIcon;
  final Function? onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        backgroundColor: MaterialStateProperty.all(color),
        side: MaterialStateProperty.all(
            const BorderSide(width: 2, color: Colors.white)),
      ),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    prefixIcon,
                    const SizedBox(
                      width: 16,
                    ),
                    Text(label),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: suffixIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
