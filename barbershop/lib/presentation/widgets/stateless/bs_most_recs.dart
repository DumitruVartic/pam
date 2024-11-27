import 'package:flutter/material.dart';

class BarbershopMostRecommended extends StatelessWidget {
  const BarbershopMostRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 800,
      child: Container(
        width: 339,
        height: 711,
        color: Colors.white,
        child: Stack(
          children: [
            const Positioned(
              child: Text(
                'Most recommended',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 39,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset('assets/Barber.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 129,
                            height: 42,
                            decoration: const BoxDecoration(
                              color: Color(0xFF363062),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 10,
                          left: 25,
                          child: Text(
                            'Booking',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 90,
                          child: Image.asset('assets/CalendarMark.png'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 278,
              child: SizedBox(
                width: 339,
                height: 72,
                child: Stack(
                  children: [
                    const Positioned(
                      child: Text(
                        'Master piece Barbershop - Haircut styling',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 28,
                      child: Image.asset('assets/Map_Point.png'),
                    ),
                    const Positioned(
                      top: 28,
                      left: 25,
                      child: Text(
                        'Joga Expo Centre (12 km)',
                        style: TextStyle(
                          color: Color(0xFF8683A1),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 52,
                      child: Image.asset('assets/Star.png'),
                    ),
                    const Positioned(
                      top: 52,
                      left: 25,
                      child: Text(
                        '5.0',
                        style: TextStyle(
                          color: Color(0xFF8683A1),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 362,
              child: Image.asset('assets/Slider1.png'),
            ),
            Positioned(
              top: 378,
              child: SizedBox(
                width: 339,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: Image.asset('assets/Pic1.png'),
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
                                'Varcity Barbershop Jogja ex The Varcher',
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
                                'Condongcatur (10 km)',
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
              top: 490,
              child: SizedBox(
                width: 339,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: Image.asset('assets/Pic2.png'),
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
                                'Twinsky Monkey Barber & Men Stuff',
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
                                'Jl Taman Siswa (8 km)',
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
              top: 602,
              child: SizedBox(
                width: 339,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: Image.asset('assets/Pic3.png'),
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
                                'Barberman - Haircut styling & massage',
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
                                'J-Walk Centre  (17 km)',
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
          ],
        ),
      ),
    );
  }
}
