import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/buttons/button_primary.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/home/home.dart';

import '../../components/text_fields/input_text.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Profile Setting"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 96,
                  width: 96,
                  child: Stack(
                    children: [
                      avatarWithImage(
                          assetImage: "assets/icons/logo.png",
                          size: 96,
                          borderRadius: 64,
                          padding: 16,
                          color: Colors.white.withAlpha(50)),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: avatarWithIcon(
                            icon: const Icon(
                              Icons.camera_alt,
                              size: 24,
                            ),
                            size: 32,
                            borderRadius: 16,
                            padding: 4,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const InputText(labelText: "Name"),
              const SizedBox(
                height: 16,
              ),
              const InputText(
                  labelText: "Email Address",
                  textInputType: TextInputType.emailAddress),
              const SizedBox(
                height: 16,
              ),
              const InputText(
                  labelText: "Phone Number",
                  textInputType: TextInputType.phone),
              const SizedBox(
                height: 16,
              ),
              const InputText(
                  labelText: "Birtday",
                  textInputType: TextInputType.datetime,
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: primaryColor,
                  )),
              const SizedBox(
                height: 16,
              ),
              ButtonPrimary(
                label: "Save Change",
                onPressed: () => Get.offAll(
                  () => const Home(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
