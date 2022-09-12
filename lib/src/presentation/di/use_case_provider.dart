import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/data/di/repository_provider.dart';
import 'package:flutter_template/src/domain/use_cases/bored_activity/get_new_activity.dart';
import 'package:flutter_template/src/domain/use_cases/signup/signup_usecase.dart';

final boredActivityUseCaseProvider = Provider<GetNewActivityUseCase>(
  (ref) => GetNewActivityUseCase(
    activityRepo: ref.watch(boredRepositoryProvider),
  ),
);

final signupUseCaseProvider = Provider<SignupUseCase>(
  (ref) => SignupUseCase(
    signupRepository: ref.watch(signupRepoProvider),
  ),
);
