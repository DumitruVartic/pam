import 'package:flutter/material.dart';

import 'presentation/widgets/stateless/bs_home_screen.dart';
import 'presentation/widgets/stateless/bs_status_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 375,
          height: 1667,
          color: Colors.white,
          child: const Stack(
            children: [BarbershopStatusBar(), BarberShopHomeScreen()],
          ),
        ),
      ),
    );
  }
}
