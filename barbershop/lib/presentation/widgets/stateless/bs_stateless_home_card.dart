import 'package:flutter/material.dart';

class BarbershopStatelessHomeCard extends StatelessWidget {
  const BarbershopStatelessHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 65,
      child: Image.asset('assets/home_card.png'),
    );
  }
}
