import 'package:barbershop/presentation/screens/bs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/repositories/data_bloc.dart';
import 'presentation/blocs/data_event.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => BarbershopBloc()..add(LoadDataEvent()),
      child: const BarbershopScreen(),
    ),
  );
}
