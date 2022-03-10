import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/buttons/buttons.dart';
import 'package:koruwel/components/text_link.dart';
import 'package:koruwel/themes/text_style.dart';

import '../components/text_fields/input_text.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Sign Up",
              style: CustomTextStyle.formTitle,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const InputText(labelText: 'Enter Full Name'),
          const SizedBox(
            height: 16,
          ),
          const InputText(
              labelText: 'Enter Email Address',
              textInputType: TextInputType.emailAddress),
          const SizedBox(
            height: 16,
          ),
          const InputText(
              labelText: 'Birthday',
              textInputType: TextInputType.emailAddress,
              suffixIcon: Icon(Icons.calendar_today)),
          const SizedBox(
            height: 16,
          ),
          const InputText(
              labelText: 'Password',
              suffixIcon: Icon(Icons.remove_red_eye_rounded)),
          const SizedBox(
            height: 16,
          ),
          const ButtonPrimary(label: 'Sign Up'),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: CustomTextStyle.paragraph,
              ),
              const SizedBox(
                width: 8,
              ),
              CustomLink(label: "Sign In", onPressed: () => Get.back())
            ],
          )
        ],
      ),
    );
  }
}
