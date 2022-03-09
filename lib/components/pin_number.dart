import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:koruwel/themes/text_style.dart';

class PinNumber extends StatelessWidget {
  const PinNumber(
      {Key? key, this.onPressed, this.backSpace = false, this.label = '0'})
      : super(key: key);

  final String label;
  final Function()? onPressed;
  final bool backSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
            width: 1.0,
            color: Colors.white,
          ),
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(64),
          ),
        ),
        onPressed: () {
          if (kDebugMode) {
            print(onPressed);
          }
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: backSpace
            ? const Icon(Icons.backspace_outlined)
            : Text(
                label,
                style: CustomTextStyle.formTitle,
              ),
      ),
    );
  }
}
