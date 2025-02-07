import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/buttons/buttons.dart';
import 'package:koruwel/components/card.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/payments/payment_check_out.dart';
import 'package:koruwel/themes/text_style.dart';

class TabCart extends StatefulWidget {
  const TabCart({Key? key}) : super(key: key);

  @override
  State<TabCart> createState() => _TabCartState();
}

class _TabCartState extends State<TabCart> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: const Icon(Icons.arrow_back),
                            onTap: () => Get.back(),
                          ),
                          const Text(
                            "Cart",
                            style: CustomTextStyle.formTitle,
                          ),
                          GestureDetector(
                            child: const Icon(Icons.info),
                          )
                        ],
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    decoration: BoxDecoration(
                      color: context.theme.backgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: const [
                          CardCart(),
                          CardCart(),
                          CardCart(),
                          CardCart(),
                          CardCart(),
                          CardCart(),
                          CardCart(),
                          CardCart(),
                          CardCart(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: 64,
                width: 128,
                child: ButtonPrimaryWithColor(
                  textColor: Colors.black,
                  label: "Checkout",
                  borderRadius: 16,
                  onPressed: () => Get.to(
                    () => const PaymentCheckOut(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
