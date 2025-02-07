import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:koruwel/components/card.dart';
import 'package:koruwel/components/notification.dart';
import 'package:koruwel/pages/appbars/app_bar_empty.dart';
import 'package:koruwel/themes/text_style.dart';

class TabWallet extends StatelessWidget {
  const TabWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: const AppBarEmpty(),
        backgroundColor: context.theme.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 32, left: 16, right: 16, bottom: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "John Doe Balance",
                            style: CustomTextStyle.paragraph,
                          ),
                          Text("800,000.00", style: CustomTextStyle.formTitle)
                        ],
                      ),
                      const CustomNotification(),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CardBig(),
                  const SizedBox(
                    height: 16,
                  ),
                  const Align(
                    child: Text("Jewelry Balance",
                        style: CustomTextStyle.formTitle),
                    alignment: Alignment.centerLeft,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CardSquare(icon: "jewelry.png"),
                      CardSquare(icon: "diamond.png"),
                      CardSquare(icon: "silver.png"),
                      CardSquare(icon: "gold.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 146,
                    child: CardRectangleWallet(icon: "gold.png"),
                  ),
                  const SizedBox(
                    height: 146,
                    child: CardRectangleWallet(icon: "silver.png"),
                  ),
                  const SizedBox(
                    height: 146,
                    child: CardRectangleWallet(icon: "jewelry.png"),
                  ),
                  const SizedBox(
                    height: 146,
                    child: CardRectangleWallet(icon: "diamond.png"),
                  ),
                  const SizedBox(
                    height: 146,
                    child: CardRectangleWallet(icon: "gold.png"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
