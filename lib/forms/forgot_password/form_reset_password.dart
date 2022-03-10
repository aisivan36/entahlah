import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/buttons/buttons.dart';
import 'package:koruwel/pages/pin/pin_create.dart';
import 'package:koruwel/themes/text_style.dart';

import '../../components/text_fields/input_text.dart';

class FormResetPassword extends StatelessWidget {
  const FormResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Reset Password",
              style: CustomTextStyle.formTitle,
            ),
          ),
          const Center(
            child: Text(
              "Create your new password",
              style: CustomTextStyle.paragraphGreyOut,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const InputText(
              labelText: 'New Password',
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
              textInputType: TextInputType.visiblePassword,
              secureText: true),
          const SizedBox(
            height: 16,
          ),
          const InputText(
              labelText: 'Confirm New Password',
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
              textInputType: TextInputType.visiblePassword,
              secureText: true),
          const SizedBox(
            height: 16,
          ),
          ButtonPrimary(
              label: 'Save Password',
              onPressed: () => Get.to(() => const PinCreate())),
        ],
      ),
    );
  }
}
