import 'package:flutter/material.dart';

class BarbershopSearchBar extends StatelessWidget {
  const BarbershopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 306,
      child: Container(
        width: 340,
        height: 44,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: 284,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFEBF0F5),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 18,
              child: Image.asset('assets/search-normal.png'),
            ),
            const Positioned(
              top: 12,
              left: 45,
              child: Text(
                'Search barber’s, haircut ser...',
                style: TextStyle(
                  color: Color(0xFF8683A1),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Image.asset('assets/Filter.png'),
            ),
          ],
        ),
      ),
    );
  }
}
