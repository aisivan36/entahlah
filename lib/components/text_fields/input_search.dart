import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({
    Key? key,
    this.loading = false,
    this.icon,
    this.labelText = "Search",
    this.onChanged,
  }) : super(key: key);
  final bool loading;
  final Widget? icon;
  final String labelText;
  final Function? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('textformfield'),
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withAlpha(80),
          ),
        ),
        border: const OutlineInputBorder(),
        hintText: labelText,
        suffixIcon: icon,
      ),
    );
  }
}
