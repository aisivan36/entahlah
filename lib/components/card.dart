import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koruwel/components/avatar.dart';
import 'package:koruwel/components/buttons/buttons.dart';
import 'package:koruwel/components/chart_bar.dart';
import 'package:koruwel/consts/color.dart';
import 'package:koruwel/pages/details/detail_coin.dart';
import 'package:koruwel/pages/exchange/exchange.dart';
import 'package:koruwel/themes/text_style.dart';

class CardBig extends StatelessWidget {
  const CardBig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
      height: 256,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "BTC",
                    style: CustomTextStyle.formTitle,
                  ),
                  Text(
                    "This Month",
                    style: CustomTextStyle.paragraph,
                  ),
                ],
              ),
              avatarWithImage(
                  assetImage: "assets/icons/bitcoin.png",
                  color: Colors.white.withAlpha(50),
                  padding: 16)
            ],
          ),
          const ChartBar()
        ],
      ),
    );
  }
}

class CardSquare extends StatelessWidget {
  const CardSquare({Key? key, this.icon = 'diamond.png'}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: 64,
      width: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white)),
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 24,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/icons/$icon"))),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "Diomond",
            style: TextStyle(fontSize: 10),
          ),
          const Text(
            "40,500",
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class CardRectangleWallet extends StatelessWidget {
  const CardRectangleWallet({Key? key, this.icon = 'diamond'})
      : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const DetailCoin()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(50),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                avatarWithImage(
                    assetImage: "assets/icons/$icon",
                    size: 42,
                    color: Colors.white.withAlpha(50)),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text("Spanish Heart"), Text("GOLD")],
                ),
                const Expanded(
                    child: Text(
                  "36,000",
                  textAlign: TextAlign.right,
                  style: CustomTextStyle.formTitle,
                ))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Expanded(
                    child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting",
                  style: TextStyle(fontSize: 11),
                )),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: ButtonWhite(
                    label: "Exchange to BTC",
                    onPressed: () => Get.to(
                      () => const Exchange(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardRectangleHome extends StatelessWidget {
  const CardRectangleHome({Key? key, this.icon = 'diamond.png'})
      : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const DetailCoin()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(50),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                avatarWithImage(
                    assetImage: "assets/icons/$icon",
                    size: 42,
                    color: Colors.white.withAlpha(50)),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Spanish Heart"),
                    Text(
                      "GOLD",
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    )
                  ],
                ),
                const Expanded(
                    child: Text(
                  "36,000",
                  textAlign: TextAlign.right,
                  style: CustomTextStyle.formTitle,
                ))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: ButtonPrimaryWithColor(
                        // context: context,
                        height: 16,
                        textColor: Colors.black,
                        label: "Buy Now",
                        onPressed: () => Get.to(() => const Exchange()))),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: ButtonPrimaryWithColor(
                    // context: context,
                    height: 16,
                    color: Colors.transparent,
                    label: "Add To Cart",
                    onPressed: () => Get.to(
                      () => const Exchange(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardCart extends StatelessWidget {
  const CardCart({Key? key, this.icon = 'diamond.png'}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const DetailCoin()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(50),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                avatarWithImage(
                    assetImage: "assets/icons/$icon",
                    size: 42,
                    color: Colors.white.withAlpha(50)),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text("Spanish Heart"), Text("GOLD")],
                ),
                const Expanded(
                    child: Text(
                  "36,000",
                  textAlign: TextAlign.right,
                  style: CustomTextStyle.formTitle,
                ))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Expanded(
                    child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting",
                  style: TextStyle(fontSize: 11),
                )),
                const SizedBox(
                  width: 16,
                ),
                avatarWithIcon(
                    icon: const Icon(Icons.restore_from_trash_sharp),
                    size: 42,
                    color: Colors.redAccent),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
    this.fullName = 'Full Name',
    this.picture = 'assets/icons/logo.png',
    this.onPressed,
  }) : super(key: key);

  final String picture;
  final String fullName;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            avatarWithImage(
                assetImage: picture, color: Colors.white.withAlpha(50)),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: CustomTextStyle.formTitle,
                ),
                const Text("Click here to edit profile")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardBigSlide extends StatelessWidget {
  const CardBigSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
      height: 196,
      width: double.infinity,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  avatarWithImage(
                      assetImage: "assets/icons/bitcoin.png",
                      size: 42,
                      color: Colors.white.withAlpha(50),
                      padding: 8),
                  const Text(
                    "Jewelry Gold",
                    style: CustomTextStyle.paragraph,
                  ),
                  const Text(
                    "TOTAL PRICE : 500BTC",
                    style: CustomTextStyle.paragraph,
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: ButtonPrimaryWithColor(
                          // context: context,
                          textColor: primaryColor,
                          label: "Buy Now")),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: ButtonPrimaryWithColor(
                          // context: context,
                          color: Colors.transparent,
                          label: "Add To Cart")),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ],
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
