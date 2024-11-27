import 'package:flutter/material.dart';

class BarbershopButton extends StatelessWidget {
  const BarbershopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 736,
      left: 105,
      child: Container(
        width: 133,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xFF363062),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 10,
              left: 25,
              child: Text(
                'See All',
                style: TextStyle(
                  color: Color(0xFF363062),
                  fontSize: 16,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 85,
              child: Image.asset(
                'assets/SquareArrowRightUp.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
