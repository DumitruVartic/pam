
// DataBloc that handles events and emits states
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/blocs/data_event.dart';
import '../models/bs_model.dart';
import '../../presentation/blocs/data_state.dart';

class BarbershopBloc extends Bloc<DataEvent, DataState> {
  BarbershopBloc() : super(DataInitial()) {
    on<LoadDataEvent>(_onLoadData);
  }

  Future<void> _onLoadData(LoadDataEvent event, Emitter<DataState> emit) async {
    emit(DataLoading());
    try {
      String jsonString = await loadJsonFromAssets('assets/data.json');
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      BarbershopModel dataModel = BarbershopModel.fromJson(jsonData);

      emit(DataLoaded(dataModel));
    }
    catch (e) {
      emit(DataError("Fail to load data"));
    }
  }
}

// Function to load JSON from assets
Future<String> loadJsonFromAssets(String path) async {
  return await rootBundle.loadString(path);
}
