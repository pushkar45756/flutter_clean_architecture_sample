import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_template/src/domain/entities/activity.dart';
import 'package:flutter_template/src/domain/use_cases/bored_activity/get_new_activity.dart';
import 'package:flutter_template/src/core/base/base_view_model.dart';
import 'package:flutter_template/src/presentation/di/use_case_provider.dart';

final boredViewModelProvider = ChangeNotifierProvider<BoredActivityViewModel>(
  (ref) => BoredActivityViewModel(
    activityUseCase: ref.watch(boredActivityUseCaseProvider),
  ),
);

class BoredActivityViewModel extends BaseViewModel {
  final GetNewActivityUseCase _activityUseCase;

  AsyncValue<Activity> newActivity = const AsyncValue.loading();

  BoredActivityViewModel({required GetNewActivityUseCase activityUseCase})
      : _activityUseCase = activityUseCase;
  // bool loader = false;

  getNewActivity({bool needLoader = false}) async {
    try {
      newActivity = AsyncValue.loading();
      if (needLoader) notifyListeners();
      final value = await _activityUseCase.call();
      newActivity = AsyncValue.data(value.data ?? Activity());
    } on Exception catch (e) {
      print(e);
    } finally {
      notifyListeners();
    }
  }
}
