import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/pin_dot.dart';
import 'package:koruwel/components/pin_number.dart';
import 'package:koruwel/pages/pin/pin_confirm.dart';

class FormPinCreate extends StatelessWidget {
  const FormPinCreate({Key? key}) : super(key: key);

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
                label: "1", onPressed: () => Get.to(() => const PinConfirm())),
            PinNumber(
                label: "2", onPressed: () => Get.to(() => const PinConfirm())),
            PinNumber(
                label: "3", onPressed: () => Get.to(() => const PinConfirm())),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinNumber(
                label: "4", onPressed: () => Get.to(() => const PinConfirm())),
            PinNumber(
                label: "5", onPressed: () => Get.to(() => const PinConfirm())),
            PinNumber(
                label: "6", onPressed: () => Get.to(() => const PinConfirm())),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinNumber(
                label: "7", onPressed: () => Get.to(() => const PinConfirm())),
            PinNumber(
                label: "8", onPressed: () => Get.to(() => const PinConfirm())),
            PinNumber(
                label: "9", onPressed: () => Get.to(() => const PinConfirm())),
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
                label: "0", onPressed: () => Get.to(() => const PinConfirm())),
            const PinNumber(label: "", backSpace: true),
          ],
        ),
      ],
    );
  }
}
