import 'package:flutter_template/src/core/base/base_use_case.dart';
import 'package:flutter_template/src/core/network/data_state.dart';

import 'package:flutter_template/src/domain/entities/activity.dart';
import 'package:flutter_template/src/domain/repositories/bored_activity/bored_activity_repo.dart';

class GetNewActivityUseCase implements UseCase<Activity, void> {
  final BoredActivityRepo _boredActivityRepo;

  GetNewActivityUseCase({required BoredActivityRepo activityRepo})
      : _boredActivityRepo = activityRepo;

  @override
  Future<DataState<Activity>> call({void params}) {
    return _boredActivityRepo.getNewActivity();
  }
}
