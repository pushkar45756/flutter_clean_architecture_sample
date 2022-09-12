import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/presentation/di/use_case_provider.dart';
import 'package:flutter_template/src/presentation/features/bored_activity/bored_activity_view_model.dart';
import 'package:flutter_template/src/presentation/features/signup/signup_viewmodel.dart';

final boredViewModelProvider = ChangeNotifierProvider<BoredActivityViewModel>(
  (ref) => BoredActivityViewModel(
    activityUseCase: ref.watch(boredActivityUseCaseProvider),
  ),
);

final signupViewModelProvider = ChangeNotifierProvider<SignupViewModel>(
  (ref) => SignupViewModel(
    signupUseCase: ref.watch(signupUseCaseProvider),
  ),
);
