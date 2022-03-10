import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                DetailChartBar(height: 50, value: 32),
                DetailChartBar(height: 130, value: 256),
                DetailChartBar(height: 100, value: 144),
                DetailChartBar(height: 120, value: 168),
                DetailChartBar(height: 110, value: 150),
                DetailChartBar(height: 70, value: 75),
                DetailChartBar(height: 50, value: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailChartBar extends StatelessWidget {
  const DetailChartBar({
    Key? key,
    this.height = 0,
    this.value = 0,
  }) : super(key: key);
  final double height;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: height,
      width: 32,
      color: Colors.white.withAlpha(40),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "$value",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
