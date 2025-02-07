import 'package:flutter/material.dart';
import 'package:koruwel/components/buttons/button_primary.dart';
import 'package:koruwel/popup/popup_reset_password.dart';
import 'package:koruwel/themes/text_style.dart';

import '../../components/text_fields/input_text.dart';

class FormForgotPassword extends StatelessWidget {
  const FormForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Enter Your Email Address",
              style: CustomTextStyle.formTitle,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: Text(
              "We'll send you a link to reset your password.",
              style: CustomTextStyle.paragraphGreyOut,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const InputText(
              labelText: 'Username / Email',
              textInputType: TextInputType.emailAddress),
          const SizedBox(
            height: 16,
          ),
          ButtonPrimary(
            label: 'Reset Password',
            onPressed: () => showPopupResetPassword(context),
          ),
        ],
      ),
    );
  }
}
