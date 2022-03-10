import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({Key? key, this.onPressed, this.label = 'Button'})
      : super(key: key);
  final Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: SizedBox(
        height: 32,
        width: double.infinity,
        child: Center(
          child: Text(label),
        ),
      ),
    );
  }
}
