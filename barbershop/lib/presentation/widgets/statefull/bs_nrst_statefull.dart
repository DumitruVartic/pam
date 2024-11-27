import 'package:flutter/material.dart';
import 'package:barbershop/data/models/bs_model.dart' as BarbershopModel;

class BarbershopNeareastStatefull extends StatelessWidget {
  final List<BarbershopModel.Barbershop> barbershops;

  const BarbershopNeareastStatefull({super.key, required this.barbershops});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: barbershops.map((barbershop) {
        return SizedBox(
          width: 339,
          height: 100,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  child: Image.asset(barbershop.image.startsWith('assets/')
                      ? barbershop.image
                      : 'assets/Pict1.png')),
              Positioned(
                left: 108,
                child: SizedBox(
                  width: 211,
                  height: 92,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          barbershop.name,
                          style: const TextStyle(
                            color: Color(0xFF111827),
                            fontSize: 16,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 48,
                        child: Image.asset('assets/Map_Point.png'),
                      ),
                      Positioned(
                        top: 48,
                        left: 25,
                        child: Text(
                          barbershop.locationWithDistance,
                          style: const TextStyle(
                            color: Color(0xFF8683A1),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 72,
                        child: Image.asset('assets/Star.png'),
                      ),
                      Positioned(
                        top: 72,
                        left: 25,
                        child: Text(
                          barbershop.reviewRate.toString(),
                          style: const TextStyle(
                            color: Color(0xFF8683A1),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ));
  }
}
