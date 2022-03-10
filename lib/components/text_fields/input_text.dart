import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
    this.labelText = 'labelText',
    this.prefixIcon,
    this.suffixIcon,
    this.textInputType,
    this.secureText = false,
  }) : super(key: key);

  final String labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final bool secureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
