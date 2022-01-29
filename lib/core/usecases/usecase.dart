import 'package:news/core/resources/data_state.dart';

abstract class Usecase<Type, Param> {
  Future<DataState<Type>> call(Param param);
}
