import 'package:flutter/material.dart';
import 'package:koruwel/components/pin_dot.dart';
import 'package:koruwel/components/pin_number.dart';
import 'package:koruwel/popup/popup_pin_created.dart';

class FormPinConfirm extends StatelessWidget {
  const FormPinConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PinDot(color: Colors.deepPurple),
            PinDot(color: Colors.deepPurple),
            PinDot(),
            PinDot(),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinNumber(
                label: "1", onPressed: () => showPopupPinCreated(context)),
            PinNumber(
                label: "2", onPressed: () => showPopupPinCreated(context)),
            PinNumber(
                label: "3", onPressed: () => showPopupPinCreated(context)),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinNumber(
                label: "4", onPressed: () => showPopupPinCreated(context)),
            PinNumber(
                label: "5", onPressed: () => showPopupPinCreated(context)),
            PinNumber(
                label: "6", onPressed: () => showPopupPinCreated(context)),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinNumber(
                label: "7", onPressed: () => showPopupPinCreated(context)),
            PinNumber(
                label: "8", onPressed: () => showPopupPinCreated(context)),
            PinNumber(
                label: "9", onPressed: () => showPopupPinCreated(context)),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 64,
            ),
            PinNumber(
                label: "0", onPressed: () => showPopupPinCreated(context)),
            const PinNumber(label: "", backSpace: true),
          ],
        ),
      ],
    );
  }
}
