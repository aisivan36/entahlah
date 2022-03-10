import 'package:flutter/material.dart';

class CustomNotification extends StatelessWidget {
  const CustomNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
          color: Colors.white.withAlpha(50),
          borderRadius: BorderRadius.circular(32)),
      child: const Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ),
    );
  }
}
