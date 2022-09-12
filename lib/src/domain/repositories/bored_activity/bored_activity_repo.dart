import 'package:flutter_template/src/core/network/data_state.dart';
import 'package:flutter_template/src/domain/entities/activity.dart';

abstract class BoredActivityRepo {
  Future<DataState<Activity>> getNewActivity();
}
