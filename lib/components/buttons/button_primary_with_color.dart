import 'package:flutter/material.dart';

class ButtonPrimaryWithColor extends StatelessWidget {
  const ButtonPrimaryWithColor({
    Key? key,
    this.label = 'Button',
    this.height = 32,
    this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
  }) : super(key: key);

  final String label;
  final double height;
  final Function()? onPressed;
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
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
