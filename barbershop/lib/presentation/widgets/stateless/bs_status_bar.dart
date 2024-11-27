import 'package:flutter/material.dart';

class BarbershopStatusBar extends StatelessWidget {
  const BarbershopStatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 39,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 20,
            child: Image.asset(
              'assets/ora.png',
              width: 42,
              height: 30,
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: Image.asset(
              'assets/battery.png',
              width: 59,
              height: 25,
            ),
          )
        ],
      ),
    );
  }
}
