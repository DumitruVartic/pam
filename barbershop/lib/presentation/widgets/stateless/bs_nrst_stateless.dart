import 'package:flutter/material.dart';

class BarbershopNeareastStateless extends StatelessWidget {
  const BarbershopNeareastStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 362,
          child: Text(
            'Nearest Babershop',
            style: TextStyle(
              color: Color(0xFF111827),
              fontSize: 18,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 398,
          child: SizedBox(
            width: 339,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Image.asset('assets/Pict1.png'),
                ),
                Positioned(
                  left: 108,
                  child: SizedBox(
                    width: 211,
                    height: 92,
                    child: Stack(
                      children: [
                        const Positioned(
                          child: Text(
                            'Alana Barbershop - Haircut massage & Spa',
                            style: TextStyle(
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
                        const Positioned(
                          top: 48,
                          left: 25,
                          child: Text(
                            'Banguntapan (5 km)',
                            style: TextStyle(
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
                        const Positioned(
                          top: 72,
                          left: 25,
                          child: Text(
                            '4.5',
                            style: TextStyle(
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
          ),
        ),
        Positioned(
          top: 512,
          child: SizedBox(
            width: 339,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Image.asset('assets/Pict2.png'),
                ),
                Positioned(
                  left: 108,
                  child: SizedBox(
                    width: 211,
                    height: 92,
                    child: Stack(
                      children: [
                        const Positioned(
                          child: Text(
                            'Hercha Barbershop - Haircut & Styling',
                            style: TextStyle(
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
                        const Positioned(
                          top: 48,
                          left: 25,
                          child: Text(
                            'Jalan Kaliurang (8 km)',
                            style: TextStyle(
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
                        const Positioned(
                          top: 72,
                          left: 25,
                          child: Text(
                            '5.0',
                            style: TextStyle(
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
          ),
        ),
        Positioned(
          top: 624,
          child: SizedBox(
            width: 339,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Image.asset('assets/Pict3.png'),
                ),
                Positioned(
                  left: 108,
                  child: SizedBox(
                    width: 211,
                    height: 92,
                    child: Stack(
                      children: [
                        const Positioned(
                          child: Text(
                            'Barberking - Haircut styling & massage',
                            style: TextStyle(
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
                        const Positioned(
                          top: 48,
                          left: 25,
                          child: Text(
                            'Jogja Expo Centre (12 km)',
                            style: TextStyle(
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
                        const Positioned(
                          top: 72,
                          left: 25,
                          child: Text(
                            '4.5',
                            style: TextStyle(
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
          ),
        ),
        Positioned(
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
        )
      ],
    );
  }
}
