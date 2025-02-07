import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/buttons/buttons.dart';
import 'package:koruwel/components/text_link.dart';
import 'package:koruwel/pages/home/home.dart';
import 'package:koruwel/pages/sign/forgot_password/forgot_password.dart';
import 'package:koruwel/pages/sign/sign_up.dart';
import 'package:koruwel/themes/text_style.dart';

import '../components/text_fields/input_text.dart';

class FormSignIn extends StatelessWidget {
  const FormSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Sign In",
              style: CustomTextStyle.formTitle,
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
          const InputText(
              labelText: 'Password',
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
              textInputType: TextInputType.visiblePassword,
              secureText: true),
          const SizedBox(
            height: 16,
          ),
          ButtonPrimary(
              label: 'Sign In',
              onPressed: () => Get.offAll(() => const Home())),
          const SizedBox(
            height: 16,
          ),
          CustomLink(
              label: "Forgot Password?",
              onPressed: () => Get.to(() => const ForgotPassword())),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have accounte yet?",
                style: CustomTextStyle.paragraph,
              ),
              const SizedBox(
                width: 8,
              ),
              CustomLink(
                  label: "Sign Up",
                  onPressed: () => Get.to(() => const SignUp()))
            ],
          )
        ],
      ),
    );
  }
}
