import 'package:barbershop/presentation/widgets/stateless/bs_search_bar.dart';
import 'package:flutter/material.dart';

import 'bs_most_recs.dart';
import 'bs_nrst_stateless.dart';
import 'bs_profile_bar.dart';
import 'bs_stateless_home_card.dart';

class BarberShopHomeScreen extends StatelessWidget {
  const BarberShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 57,
      left: 17,
      child: SizedBox(
        width: 340,
        height: 1546,
        child: Stack(
          children: [
            BarbershopProfileBar(),
            BarbershopStatelessHomeCard(),
            BarbershopSearchBar(),
            BarbershopNeareastStateless(),
            BarbershopMostRecommended(),
          ],
        ),
      ),
    );
  }
}
