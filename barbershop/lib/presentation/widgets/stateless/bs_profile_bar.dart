import 'package:flutter/material.dart';

class BarbershopProfileBar extends StatelessWidget {
  const BarbershopProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: 340,
        height: 49,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              width: 20,
              height: 20,
              child: Image.asset('assets/mappoint.png'),
            ),
            const Positioned(
              top: 0,
              left: 20,
              child: Text(
                'Yogyakarta',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                'Joe Samanta',
                style: TextStyle(
                  color: Color(0xFF111827),
                  fontSize: 18,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 4,
              right: 0,
              child: Image.asset(
                'assets/photo_profile.png',
                height: 42,
                width: 42,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
