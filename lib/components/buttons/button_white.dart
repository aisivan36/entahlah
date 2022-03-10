import 'package:flutter/material.dart';

class ButtonWhite extends StatelessWidget {
  const ButtonWhite(
      {Key? key,
      this.label = 'Button',
      this.onPressed,
      this.borderRadius = 12.0})
      : super(key: key);

  final String label;
  final Function()? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius), // <-- Radius
      ),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: SizedBox(
        height: 16,
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
