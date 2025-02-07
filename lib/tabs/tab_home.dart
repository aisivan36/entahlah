import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/buttons/buttons.dart';
import 'package:koruwel/components/card.dart';
import 'package:koruwel/components/chart_bar_home.dart';
import 'package:koruwel/components/label_with_dot.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/appbars/app_bar_empty.dart';
import 'package:koruwel/themes/text_style.dart';

import '../components/text_fields/input_search.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const AppBarEmpty(),
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: InputSearch(
                            icon: Icon(
                              Icons.search,
                              color: primaryColor,
                            ),
                            labelText: "Search")),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        flex: 1,
                        child: avatarWithIcon(
                            icon: const Icon(
                              Icons.notifications,
                              size: 32,
                            ),
                            size: 64,
                            padding: 4,
                            color: Colors.white.withAlpha(50)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const CardBigSlide(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          const Expanded(
                              child: Text(
                            "Market Status",
                            style: CustomTextStyle.formTitle,
                          )),
                          Expanded(
                            child: ButtonOutline(
                              height: 16,
                              prefixIcon: Container(),
                              label: "Weekly",
                              suffixIcon: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 24,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const ChartBarHome(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          LabelWithDot(
                              label: "GOLD",
                              colorText: Colors.deepOrange,
                              colorDot: Colors.deepOrange),
                          SizedBox(
                            width: 8,
                          ),
                          LabelWithDot(
                              label: "DIAMOND",
                              colorText: Colors.deepPurple,
                              colorDot: Colors.deepPurple,
                              alignment: MainAxisAlignment.start),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const CardRectangleHome(),
                      const CardRectangleHome(),
                      const CardRectangleHome(),
                      const CardRectangleHome(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
