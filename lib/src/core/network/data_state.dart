import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;
  final String? stringError;

  const DataState({this.data, this.error, this.stringError});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}

class DataFailure<T> extends DataState<T> {
  const DataFailure(String error) : super(stringError: error);
}
