import 'dart:ui';

import 'package:barbershop/presentation/widgets/statefull/barbershop.dart';
import 'package:flutter/material.dart';

class BarbershopScreen extends StatelessWidget {
  const BarbershopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Barbershop App')),
        body: BarbershopStateBuilder(),
      ),
    );
  }
}
