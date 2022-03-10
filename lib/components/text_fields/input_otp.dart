import 'package:flutter/material.dart';

class InputOTP extends StatelessWidget {
  const InputOTP({
    Key? key,
    this.last = false,
    this.onChanged,
    this.secureText = false,
  }) : super(key: key);
  final bool secureText;
  final bool last;
  final Function? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (text) {
        if (last) {
          if (onChanged != null) {
            onChanged!();
          }
        } else {
          FocusScope.of(context).nextFocus();
        }
      },
      obscureText: secureText,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}
