import 'package:barbershop/data/datasources/remote_data_source.dart';
import 'package:barbershop/data/models/bs_model.dart' as BarbershopModel;
import 'package:flutter/material.dart';

class BarbershopStatefullHomeCard extends StatelessWidget {
  final BarbershopModel.Banner banner;

  BarbershopStatefullHomeCard({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 65,
      child: getImageFromUrl(banner.image), // Pass URL from the banner model
    );
  }
}
