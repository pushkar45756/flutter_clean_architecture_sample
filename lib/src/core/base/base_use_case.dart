import 'package:flutter_template/src/core/network/data_state.dart';

/// need to re-think of same

abstract class UseCase<T, P> {
  Future<DataState<T>> call({P params});
}
