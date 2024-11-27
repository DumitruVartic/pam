import 'package:barbershop/data/models/bs_model.dart';

abstract class DataState {}

class DataInitial extends DataState {}

class DataLoading extends DataState {}

class DataLoaded extends DataState {
  final BarbershopModel dataModel;

  DataLoaded(this.dataModel);
}

class DataError extends DataState {
  final String error;

  DataError(this.error);
}
